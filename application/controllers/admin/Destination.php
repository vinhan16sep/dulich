<?php defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * 
 */
class Destination extends Admin_Controller{

    function __construct(){
        parent::__construct();
        $this->load->model('destination_model');
        $this->load->model('region_model');
        $this->load->model('province_model');
        $this->load->helper('common_helper');
        $this->author_data = handle_author_common_data();
    }

    public function index(){
        $keywords = '';
        if($this->input->get('search')){
            $keywords = $this->input->get('search');
        }
        $this->data['keywords'] = $keywords;
        $total_rows  = $this->destination_model->count_search_by_create_by($keywords);
        $this->load->library('pagination');
        $config = array();
        $base_url = base_url('admin/destination/index');
        $per_page = 10;
        $uri_segment = 4;
        foreach ($this->pagination_config($base_url, $total_rows, $per_page, $uri_segment) as $key => $value) {
            $config[$key] = $value;
        }
        $this->data['page'] = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $this->pagination->initialize($config);
        $this->data['page_links'] = $this->pagination->create_links();
        $result = $this->destination_model->get_all_with_pagination_search_by_create_by($per_page, $this->data['page'], $keywords);
        $this->data['result'] = $result;

        $region = $this->region_model->get_all();
        $region = build_array_by_id_for_dropdown($region);

        $province = $this->province_model->get_all();
        $province = build_array_by_id_for_dropdown($province);
        
        $this->data['region'] = $region;
        $this->data['province'] = $province;

        $this->render('admin/destination/index');
    }

    public function create(){
        handle_common_permission(array_merge($this->permission_admin, $this->permission_mod));
        // Get all region
        $region = $this->region_model->get_all(1);
        $region = build_array_by_id_for_dropdown($region);
        $this->data['region'] = $region;


        $this->load->helper('form');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('title_vi', 'Tiêu đề', 'required');
        $this->form_validation->set_rules('title_en', 'Title', 'required');
        $this->form_validation->set_rules('region_id', 'Vùng miền', 'required');
        $this->form_validation->set_rules('image', 'Hình ảnh', 'callback_check_file');

        if ($this->form_validation->run() == FALSE) {
            $this->render('admin/destination/create');
        } else {
            if ($this->input->post()) {
                if(!empty($_FILES['image']['name'][0])){
                    $this->check_multiple_imgs($_FILES['image']['name'], $_FILES['image']['size']);
                }
                $slug = $this->input->post('slug');
                $unique_slug = $this->destination_model->build_unique_slug($slug);
                if(!file_exists('assets/upload/destination/' . $unique_slug) && (!!empty($_FILES['image']['name'][0]) || !!empty($_FILES['dateimg']['name']) || !!empty($_FILES['image_localtion']['name']))){
                    mkdir('assets/upload/destination/' . $unique_slug, 0777);
                }
                if ( !empty($_FILES['image']['name'][0]) ) {
                    chmod('assets/upload/destination/' . $unique_slug, 0777);
                    $images = $this->upload_multiple_image('assets/upload/destination/' . $unique_slug, 'image');
                    $avatar = $images[0];
                }
                $images = json_encode($images);
                $data = array(
                    'image' => $images,
                    'avatar' => $avatar,
                    'slug' => $unique_slug,
                    'is_top' => $this->input->post('is_top')? $this->input->post('is_top') : 0,
                    'region_id' => $this->input->post('region_id'),
                    'province_id' => $this->input->post('province_id'),
                    'title_vi' => $this->input->post('title_vi'),
                    'title_en' => $this->input->post('title_en'),
                    'metakeywords_vi' => $this->input->post('metakeywords_vi'),
                    'metakeywords_en' => $this->input->post('metakeywords_en'),
                    'metadescription_vi' => $this->input->post('metadescription_vi'),
                    'metadescription_en' => $this->input->post('metadescription_en'),
                    'description_vi' => $this->input->post('description_vi'),
                    'description_en' => $this->input->post('description_en'),
                    'body_vi' => $this->input->post('body_vi'),
                    'body_en' => $this->input->post('body_en'),
                );
                $insert = $this->destination_model->insert(array_merge($data, $this->author_data));
                if ($insert) {
                    chmod('assets/upload/destination/' . $unique_slug, 0755);
                    $this->session->set_flashdata('message_success', MESSAGE_CREATE_SUCCESS);
                    redirect('admin/destination', 'refresh');
                }else{
                    $this->session->set_flashdata('message_error', MESSAGE_CREATE_ERROR);
                    redirect('admin/destination/create');
                }
            }
        }
    }

    public function detail($id){
        $detail = $this->destination_model->find($id);
        $region = $this->region_model->find($detail['region_id']);
        $province = $this->province_model->find($detail['province_id']);
        $this->data['detail'] = $detail;
        $this->data['region'] = $region;
        $this->data['province'] = $province ? $province : null ;
        $this->render('admin/destination/detail');
    }

    public function edit($id){
        handle_common_permission(array_merge($this->permission_admin, $this->permission_manager, $this->permission_mod));
        if($id &&  is_numeric($id) && ($id > 0)){
            //Get all region
            $region = $this->region_model->get_all(1);
            $region = build_array_by_id_for_dropdown($region);
            $this->data['region'] = $region;

            $detail = $this->destination_model->find($id);
            $this->data['detail'] = $detail;
            if ( $this->ion_auth->in_group('mod') ) {
                if ($detail['created_by'] != $this->ion_auth->user()->row()->username) {
                    $this->session->set_flashdata('message_error', MESSAGE_ERROR_UPDATE_BY_PERMISSION);
                    redirect('admin/destination/index', 'refresh');
                }
            }
            

            //Get province by region_id
            $province = $this->province_model->get_by_field_is_active('region_id', $detail['region_id']);
            $province = build_array_by_id_for_dropdown($province);
            $this->data['province'] = $province;

            $this->load->helper('form');
            $this->load->library('form_validation');

            $this->form_validation->set_rules('title_vi', 'Tiêu đề', 'required');
            $this->form_validation->set_rules('title_en', 'Title', 'required');
            $this->form_validation->set_rules('region_id', 'Vùng miền', 'required');
            // $this->form_validation->set_rules('province_id', 'Tỉnh / Thành phố', 'required');

            
            if ($this->form_validation->run() == FALSE) {
                $this->render('admin/destination/edit');
            }else{
                if ($this->input->post()) {
                    if( !empty($_FILES['image']['name'][0]) ){
                        $this->check_multiple_imgs($_FILES['image']['name'], $_FILES['image']['size']);
                    }

                    $slug = $this->input->post('slug');
                    $unique_slug = $detail['slug'];
                    if ($slug != $unique_slug) {
                        $unique_slug = $this->destination_model->build_unique_slug($slug);
                        if(file_exists('assets/upload/destination/' . $detail['slug'])) {
                            chmod('assets/upload/destination/' . $detail['slug'], 0777);
                            rename('assets/upload/destination/' . $detail['slug'], 'assets/upload/destination/' . $unique_slug);
                        }
                    }
                    

                    $old_images = json_decode($detail['image']);
                    if ( !empty($_FILES['image']['name'][0]) ) {
                        chmod('assets/upload/destination/' . $unique_slug, 0777);
                        $new_images = $this->upload_multiple_image('assets/upload/destination/'.$unique_slug, 'image');
                        if($new_images){
                            $this->check_multiple_imgs($_FILES['image']['name'], $_FILES['image']['size']);
                            foreach ($new_images as $key => $value) {
                                $old_images[] = $value;
                            }
                        }
                    }
                    
                    $images = json_encode($old_images);

                    $data = array(
                        'slug' => $unique_slug,
                        'is_top' => $this->input->post('is_top')? $this->input->post('is_top') : 0,
                        'region_id' => $this->input->post('region_id'),
                        'province_id' => $this->input->post('province_id'),
                        'title_vi' => $this->input->post('title_vi'),
                        'title_en' => $this->input->post('title_en'),
                        'metakeywords_vi' => $this->input->post('metakeywords_vi'),
                        'metakeywords_en' => $this->input->post('metakeywords_en'),
                        'metadescription_vi' => $this->input->post('metadescription_vi'),
                        'metadescription_en' => $this->input->post('metadescription_en'),
                        'description_vi' => $this->input->post('description_vi'),
                        'description_en' => $this->input->post('description_en'),
                        'body_vi' => $this->input->post('body_vi'),
                        'body_en' => $this->input->post('body_en'),
                        'is_active' => 0,
                    );
                    if ( !empty($_FILES['image']['name'][0]) ) {
                        $data['image'] = $images;
                    }
                    $update = $this->destination_model->update($id,array_merge($data, $this->author_data));
                    if ($update) {
                        chmod('assets/upload/destination/' . $unique_slug, 0755);
                        $this->session->set_flashdata('message_success', MESSAGE_CREATE_SUCCESS);
                        redirect('admin/destination/index', 'refresh');
                    }else{
                        $this->session->set_flashdata('message_error', MESSAGE_CREATE_ERROR);
                        redirect('admin/destination/edit/' . $id);
                    }
                }
            }
        }
    }

    public function remove(){
        handle_common_permission($this->permission_admin);
        $id = $this->input->get('id');
        $data = array('is_deleted' => 1);
        $update = $this->destination_model->update($id, $data);
        if($update == 1){
            return $this->output
                ->set_content_type('application/json')
                ->set_status_header(HTTP_SUCCESS)
                ->set_output(json_encode(array('status' => HTTP_SUCCESS, 'isExisted' => true)));
        }
            return $this->output
                    ->set_content_type('application/json')
                    ->set_status_header(HTTP_BAD_REQUEST)
                    ->set_output(json_encode(array('status' => HTTP_BAD_REQUEST)));
    }

    public function remove_image(){
        $id = $this->input->get('id');
        $image = $this->input->get('image');
        $detail = $this->destination_model->find($id);
        if ($image == $detail['avatar']) {
            return $this->output
                ->set_content_type('application/json')
                ->set_status_header(HTTP_SUCCESS)
                ->set_output(json_encode(array('status' => HTTP_SUCCESS, 'isExisted' => false)));
        }
        $upload = [];
        $upload = json_decode($detail['image']);
        $key = array_search($image, $upload);
        unset($upload[$key]);
        $newUpload = [];
        foreach ($upload as $key => $value) {
            $newUpload[] = $value;
        }
        
        $image_json = json_encode($newUpload);
        $data = array('image' => $image_json);

        $update = $this->destination_model->update($id,$data);
        if($update == 1){
            if($image != '' && file_exists('assets/upload/destination/'.$detail['slug'].'/'.$image)){
                unlink('assets/upload/destination/'.$detail['slug'].'/'.$image);
            }
            return $this->output
                ->set_content_type('application/json')
                ->set_status_header(HTTP_SUCCESS)
                ->set_output(json_encode(array('status' => HTTP_SUCCESS, 'isExisted' => true)));
        }
            return $this->output
                    ->set_content_type('application/json')
                    ->set_status_header(HTTP_BAD_REQUEST)
                    ->set_output(json_encode(array('status' => HTTP_BAD_REQUEST)));
    }

    public function active_avatar(){
        $id = $this->input->get('id');
        $image = $this->input->get('image');
        $data = array('avatar' => $image);
        $update = $this->destination_model->update($id,$data);
        if($update == 1){
            $detail = $this->destination_model->find($id);
            return $this->output
                ->set_content_type('application/json')
                ->set_status_header(HTTP_SUCCESS)
                ->set_output(json_encode(array('status' => HTTP_SUCCESS, 'isExisted' => true, 'image_path' => base_url('assets/upload/destination/' . $detail['slug'] . '/' . $image) )));
        }
        return $this->output
                ->set_content_type('application/json')
                ->set_status_header(HTTP_BAD_REQUEST)
                ->set_output(json_encode(array('status' => HTTP_BAD_REQUEST)));
    }

    public function active(){
        $id = $this->input->get('id');
        $data = array('is_active' => 1);
        $update = $this->destination_model->update($id,$data);
        if ($update == 1) {
            return $this->output
                ->set_content_type('application/json')
                ->set_status_header(HTTP_SUCCESS)
                ->set_output(json_encode(array('status' => HTTP_SUCCESS, 'isExisted' => true) ));
        }
        return $this->output
            ->set_content_type('application/json')
            ->set_status_header(HTTP_BAD_REQUEST)
            ->set_output(json_encode(array('status' => HTTP_BAD_REQUEST)));
    }

    public function deactive(){
        $id = $this->input->get('id');
        $data = array('is_active' => 0);
        $update = $this->destination_model->update($id,$data);
        if ($update == 1) {
            return $this->output
                ->set_content_type('application/json')
                ->set_status_header(HTTP_SUCCESS)
                ->set_output(json_encode(array('status' => HTTP_SUCCESS, 'isExisted' => true) ));
        }
        return $this->output
            ->set_content_type('application/json')
            ->set_status_header(HTTP_BAD_REQUEST)
            ->set_output(json_encode(array('status' => HTTP_BAD_REQUEST)));
    }

    public function get_province(){
        $region_id = $this->input->get('region_id');
        $province = $this->province_model->get_by_field_is_active('region_id', $region_id);
        if ($province) {
            // $province = build_array_by_id_for_dropdown($province);
            return $this->output
                ->set_content_type('application/json')
                ->set_status_header(HTTP_SUCCESS)
                ->set_output(json_encode(array('status' => HTTP_SUCCESS, 'isExisted' => true, 'province' => $province)));
        }else{
            $province = array(['id' => '', 'title_vi' => 'Vùng miền này chưa có Tỉnh / Thành phố']);
            return $this->output
                ->set_content_type('application/json')
                ->set_status_header(HTTP_SUCCESS)
                ->set_output( json_encode(array('status' => HTTP_SUCCESS, 'isExisted' => true, 'province' => $province )));
        }
        return $this->output
            ->set_content_type('application/json')
            ->set_status_header(HTTP_BAD_REQUEST)
            ->set_output(json_encode(array('status' => HTTP_BAD_REQUEST)));

    }

    protected function check_multiple_imgs($filename, $filesize){
        $images = array('jpg', 'jpeg', 'png', 'gif');
        foreach ($filename as $key => $value) {
            $map[] = explode('.',$value);
        }
        foreach ($map as $key => $value) {
            $new_map[] = $value[1];
        }
        if(array_diff($new_map, $images) != null){
            $this->session->set_flashdata('message_error', MESSAGE_FILE_EXTENSION_ERROR);
            redirect('admin/destination');
        }
        $image_size = array('success');

        foreach ($filesize as $key => $value) {
            if ($value > 1228800) {
                $check_size[] = 'error';
            }else{
                $check_size[] = 'success';
            }
        }
        if (array_diff($check_size, $image_size) != null) {
            $this->session->set_flashdata('message_error', sprintf(MESSAGE_PHOTOS_ERROR, 1200));
            redirect('admin/destination');
        }
    }

    public function check_file(){
        $this->form_validation->set_message(__FUNCTION__, 'Vui lòng chọn ảnh.');
        if (!empty($_FILES['image']['name'][0])) {
            return true;
        }
        return true;
    }   
    public function check_top(){
        $id = $this->input->get('id');
        $total = $this->destination_model->count_is_top(1);
        if(is_numeric($id)){
            $detail = $this->destination_model->find($id);
            if($detail['is_top'] == 1){
                $total = $total - 1;
            }
        }
        if($total >=3){
            return $this->return_api(HTTP_SUCCESS,sprintf(MESSAGE_CHECK_TOP_ERROR,'destination','destination','destination','destination'),'', false);
        }else{
            return $this->return_api(HTTP_SUCCESS,'','', true);
        }
    }

    public function remove_image_multiple(){
        handle_common_permission_ajax($this->permission_admin);
        $id = $this->input->get('id');
        $image = $this->input->get('image');
        $detail = $this->destination_model->find($id);
        $array_image = json_decode($detail['image'],true);
        $reponse = array(
            'avatar' => '',
            'error' => '',
            'error_permission' => ''
        );
        if(count($array_image) == 1){
            $reponse['error'] = 'error';
            return $this->return_api(HTTP_SUCCESS,MESSAGE_REMOVE_IMAGE_ERROR,$reponse);
        }else{
            $k = array_search($image,$array_image);
            unset($array_image[$k]);
            $array_image = array_values($array_image);
        }
        $data['image'] = json_encode($array_image);
        if($detail['avatar'] == $image){
            $data['avatar'] = $array_image[0];
        }
        $update = $this->destination_model->update($id, $data);
        if($update == 1){
            if($image != '' && file_exists('assets/upload/destination/'.$detail['slug'].'/'.$image)){
                $this->remove_img($detail['slug'],$image);
            }
            if(isset($data['avatar'])){
                $reponse['avatar'] = $data['avatar'];
            }
            return $this->return_api(HTTP_SUCCESS,MESSAGE_REMOVE_SUCCESS,$reponse);
        }
        return $this->return_api(HTTP_SUCCESS,MESSAGE_REMOVE_ERROR,$reponse);
    }
    protected function remove_img($unique_slug = '',$image= ''){
        if(file_exists('assets/upload/destination/'.$unique_slug.'/'.$image)){
            unlink('assets/upload/destination/'.$unique_slug.'/'.$image);
        }
    }
    public function img_activated(){
        handle_common_permission_ajax($this->permission_admin);
        $id = $this->input->get('id');
        $image = $this->input->get('image');
        $detail = $this->destination_model->find($id);
        if($detail['avatar'] != $image){
            $avatar = $image;
            $update_activated = "1";
        }else{
            $avatar = "";
            $update_activated = "0";
        }
        $data = array('avatar' => $avatar);
        $update = $this->destination_model->update($id, $data);
        $reponse = array(
            'update_activated' => $update_activated,
            'error_permission' => ''
        );
        if($update == 1){
            return $this->return_api(HTTP_SUCCESS,MESSAGE_UPDATE_SUCCESS,$reponse);
        }
        return $this->return_api(HTTP_SUCCESS,MESSAGE_UPDATE_ERROR,$reponse);
    }
}