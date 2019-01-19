<?php defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * 
 */
class Cuisine extends Admin_Controller{

    function __construct(){
        parent::__construct();
        $this->load->model('cuisine_model');
        $this->load->model('cuisine_category_model');
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
        $total_rows  = $this->cuisine_model->count_search_by_create_by($keywords);
        $this->load->library('pagination');
        $config = array();
        $base_url = base_url('admin/cuisine/index');
        $per_page = 10;
        $uri_segment = 4;
        foreach ($this->pagination_config($base_url, $total_rows, $per_page, $uri_segment) as $key => $value) {
            $config[$key] = $value;
        }
        $this->data['page'] = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $this->pagination->initialize($config);
        $this->data['page_links'] = $this->pagination->create_links();
        $result = $this->cuisine_model->get_all_with_pagination_join_cayegory_search_by_create_by($per_page, $this->data['page'], $keywords);
        $this->data['result'] = $result;

        $region = $this->region_model->get_all();
        $region_slug = get_slug($region);
        $this->data['region_slug'] = $region_slug;

        $cuisine_category = $this->cuisine_category_model->get_all();
        $cuisine_category_slug = get_slug($cuisine_category);
        $this->data['cuisine_category_slug'] = $cuisine_category_slug;

        $this->render('admin/cuisine/index');
    }

    public function create(){
        handle_common_permission(array_merge($this->permission_admin, $this->permission_mod));
        // Get all cuisine category
        $cuisine_category = $this->cuisine_category_model->get_all(1);
        $cuisine_category = build_array_by_id_for_dropdown($cuisine_category);
        $this->data['cuisine_category'] = $cuisine_category;

        //Get all region
        $region = $this->region_model->get_all();
        $region = build_array_by_id_for_dropdown($region);
        $this->data['region'] = $region;

        $this->load->helper('form');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('title_vi', 'Tiêu đề', 'required');
        $this->form_validation->set_rules('title_en', 'Title', 'required');
        $this->form_validation->set_rules('image', 'Hình ảnh', 'callback_check_file');
        $this->form_validation->set_rules('region_id', 'Vùng miền', 'required');
        $this->form_validation->set_rules('cuisine_category_id', 'Danh mục', 'required');

        if ($this->form_validation->run() == FALSE) {
            $this->render('admin/cuisine/create');
        } else {
            if ($this->input->post()) {
                if(!empty($_FILES['image']['name'][0])){
                    $this->check_multiple_imgs($_FILES['image']['name'], $_FILES['image']['size']);
                }
                $slug = $this->input->post('slug');
                $unique_slug = $this->cuisine_model->build_unique_slug($slug);
                if(!file_exists('assets/upload/cuisine/' . $unique_slug)){
                    mkdir('assets/upload/cuisine/' . $unique_slug, 0777);
                }
                if ( !empty($_FILES['image']['name'][0]) ) {
                    chmod('assets/upload/cuisine/' . $unique_slug, 0777);
                    $images = $this->upload_multiple_image('assets/upload/cuisine/' . $unique_slug, 'image');
                    $avatar = $images[0];
                }
                $data = array(
                    'image' => json_encode($images),
                    'avatar' => $avatar,
                    'slug' => $unique_slug,
                    'is_top' => $this->input->post('is_top')? $this->input->post('is_top') : 0,
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
                    'cuisine_category_id' => $this->input->post('cuisine_category_id'),
                    'region_id' => $this->input->post('region_id'),
                );
                $insert = $this->cuisine_model->insert(array_merge($data, $this->author_data));
                if ($insert) {
                    chmod('assets/upload/cuisine/' . $unique_slug, 0755);
                    $this->session->set_flashdata('message_success', MESSAGE_CREATE_SUCCESS);
                    redirect('admin/cuisine', 'refresh');
                }else{
                    $this->session->set_flashdata('message_error', MESSAGE_CREATE_ERROR);
                    redirect('admin/cuisine/create');
                }
            }
        }
    }

    public function detail($id){
        $detail = $this->cuisine_model->find($id);
        $cuisine_category = $this->cuisine_category_model->find($detail['cuisine_category_id']);
        $this->data['detail'] = $detail;
        $this->data['cuisine_category'] = $cuisine_category ? $cuisine_category : null ;
        $this->render('admin/cuisine/detail');
    }

    public function edit($id){
        handle_common_permission(array_merge($this->permission_admin, $this->permission_manager, $this->permission_mod));
        if($id &&  is_numeric($id) && ($id > 0)){
            // Get all cuisine category
            $cuisine_category = $this->cuisine_category_model->get_all(1);
            $cuisine_category = build_array_by_id_for_dropdown($cuisine_category);
            $this->data['cuisine_category'] = $cuisine_category;

            //Get all region
            $region = $this->region_model->get_all();
            $region = build_array_by_id_for_dropdown($region);
            $this->data['region'] = $region;

            $detail = $this->cuisine_model->find($id);
            $this->data['detail'] = $detail;
            if ( $this->ion_auth->in_group('mod') ) {
                if ($detail['created_by'] != $this->ion_auth->user()->row()->username) {
                    $this->session->set_flashdata('message_error', MESSAGE_ERROR_UPDATE_BY_PERMISSION);
                    redirect('admin/cuisine/index', 'refresh');
                }
            }

            $this->load->helper('form');
            $this->load->library('form_validation');

            $this->form_validation->set_rules('title_vi', 'Tiêu đề', 'required');
            $this->form_validation->set_rules('title_en', 'Title', 'required');
            $this->form_validation->set_rules('region_id', 'Vùng miền', 'required');
            $this->form_validation->set_rules('cuisine_category_id', 'Danh mục', 'required');

            if ($this->form_validation->run() == FALSE) {
                $this->render('admin/cuisine/edit');
            }else{
                if ($this->input->post()) {
                     if(!empty($_FILES['image']['name'][0])){
                        $this->check_multiple_imgs($_FILES['image']['name'], $_FILES['image']['size']);
                    }

                    $slug = $this->input->post('slug');
                    $unique_slug = $detail['slug'];
                    if ($slug != $unique_slug) {
                        $unique_slug = $this->cuisine_model->build_unique_slug($slug);
                        if(file_exists('assets/upload/cuisine/' . $detail['slug'])) {
                            chmod('assets/upload/cuisine/' . $detail['slug'], 0777);
                            rename('assets/upload/cuisine/' . $detail['slug'], 'assets/upload/cuisine/' . $unique_slug);
                        }
                    }
                    
                    $old_images = json_decode($detail['image']);
                    if ( !empty($_FILES['image']['name'][0]) ) {
                        chmod('assets/upload/cuisine/' . $unique_slug, 0777);
                        $new_images = $this->upload_multiple_image('assets/upload/cuisine/'.$unique_slug, 'image');
                        if($new_images){
                            $this->check_multiple_imgs($_FILES['image']['name'], $_FILES['image']['size']);
                            $images = array_values(array_merge($old_images, $new_images));
                        }
                    }

                    $data = array(
                        'slug' => $unique_slug,
                        'is_active' => 0,
                        'is_top' => $this->input->post('is_top')? $this->input->post('is_top') : 0,
                        'title_vi' => $this->input->post('title_vi'),
                        'title_en' => $this->input->post('title_en'),
                        'metakeywords_vi' => $this->input->post('metakeywords_vi'),
                        'metakeywords_en' => $this->input->post('metakeywords_en'),
                        'metadescription_vi' => $this->input->post('metadescription_vi'),
                        'metadescription_en' => $this->input->post('metadescription_en'),
                        'description_vi' => $this->input->post('description_vi'),
                        'description_en' => $this->input->post('description_en'),
                        'cuisine_category_id' => $this->input->post('cuisine_category_id'),
                        'region_id' => $this->input->post('region_id'),
                    );
                    if ( isset($images) ) {
                        $data['image'] = json_encode($images);
                    }
                    $update = $this->cuisine_model->update($id,array_merge($data, $this->author_data));
                    if ($update) {
                        chmod('assets/upload/cuisine/' . $unique_slug, 0755);
                        $this->session->set_flashdata('message_success', MESSAGE_UPDATE_SUCCESS);
                        if(isset($images) && $images != $detail['image'] && file_exists('assets/upload/cuisine/'.$unique_slug.'/'.$detail['image'])){
                            unlink('assets/upload/cuisine/'.$unique_slug.'/'.$detail['image']);
                        }
                        redirect('admin/cuisine/index', 'refresh');
                    }else{
                        $this->session->set_flashdata('message_error', MESSAGE_UPDATE_ERROR);
                        redirect('admin/cuisine/edit/' . $id);
                    }
                }
            }
        }
    }

    public function remove(){
        if(!handle_common_permission_active_and_remove()){
            return $this->return_api(HTTP_BAD_REQUEST,'Tài khoản không có quyền truy cập',array('error_permission' => 'error'), false);
        }
        $id = $this->input->get('id');
        $data = array('is_deleted' => 1);
        $update = $this->cuisine_model->update($id, $data);
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

    public function delete_all(){
        $ids = $this->input->get('ids');
        $data = array('is_deleted' => 1);
        foreach ($ids as $id) {
            $update = $this->cuisine_model->update($id, $data);
        }
        return $this->output
                ->set_content_type('application/json')
                ->set_status_header(HTTP_SUCCESS)
                ->set_output(json_encode(array('status' => HTTP_SUCCESS, 'isExisted' => true)));
    }

    public function get_province(){
        $region_id = $this->input->get('region_id');
        $province = $this->province_model->get_by_field('region_id', $region_id);
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
            redirect('admin/cuisine');
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
            redirect('admin/cuisine');
        }
    }
    protected function check_img($filename, $filesize){
        $reponse = array(
            'csrf_hash' => $this->security->get_csrf_hash()
        );
        $map = strripos($filename, '.')+1;
        $fileextension = substr($filename, $map,(strlen($filename)-$map));
        if(!($fileextension == 'jpg' || $fileextension == 'jpeg' || $fileextension == 'png' || $fileextension == 'gif'  || $filesize > 1228800)){
            $this->session->set_flashdata('message_error', sprintf(MESSAGE_PHOTOS_ERROR, 1200));
            redirect('admin/cuisine');
        }
    }

    public function check_file(){
        $this->form_validation->set_message(__FUNCTION__, 'Vui lòng chọn ảnh.');
        if (!empty($_FILES['image']['name'])) {
            return true;
        }
        return true;
    }

    public function check_top(){
        $id = $this->input->get('id');
        $value = $this->input->get('value');
        $region_id = $this->input->get('region_id');
        $total = $this->cuisine_model->count_is_top(1,$value,$region_id);
        if(is_numeric($id)){
            $detail = $this->cuisine_model->find($id);
            if($detail['is_top'] == 1){
                $total = $total - 1;
            }
        }
        if($total >=3){
            return $this->return_api(HTTP_SUCCESS,MESSAGE_CHECK_TOP_CATEGORY_ERROR,'', false);
        }else{
            return $this->return_api(HTTP_SUCCESS,'','', true);
        }
    }
    public function remove_image_multiple(){
        $id = $this->input->get('id');
        $detail = $this->cuisine_model->find($id);
        if ($detail['created_by'] != $this->ion_auth->user()->row()->username) {
            if(!handle_common_permission_active_and_remove()){
                return $this->return_api(HTTP_BAD_REQUEST,'Tài khoản không có quyền truy cập',array('error_permission' => 'error'), false);
            }
        }
        $image = $this->input->get('image');
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
        $data['is_active'] = 0;
        if($detail['avatar'] == $image){
            $data['avatar'] = $array_image[0];
        }
        $update = $this->cuisine_model->update($id, $data);
        if($update == 1){
            if($image != '' && file_exists('assets/upload/cuisine/'.$detail['slug'].'/'.$image)){
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
        if(file_exists('assets/upload/cuisine/'.$unique_slug.'/'.$image)){
            unlink('assets/upload/cuisine/'.$unique_slug.'/'.$image);
        }
    }
    public function img_activated(){
        if ($detail['created_by'] != $this->ion_auth->user()->row()->username) {
            if(!handle_common_permission_active_and_remove()){
                return $this->return_api(HTTP_BAD_REQUEST,'Tài khoản không có quyền truy cập',array('error_permission' => 'error'), false);
            }
        }
        $id = $this->input->get('id');
        $image = $this->input->get('image');
        $detail = $this->cuisine_model->find($id);
        if($detail['avatar'] != $image){
            $avatar = $image;
            $update_activated = "1";
        }else{
            $avatar = "";
            $update_activated = "0";
        }
        $data = array('avatar' => $avatar,'is_active' => 0);
        $update = $this->cuisine_model->update($id, $data);
        $reponse = array(
            'update_activated' => $update_activated,
            'error_permission' => ''
        );
        if($update == 1){
            return $this->return_api(HTTP_SUCCESS,MESSAGE_UPDATE_SUCCESS,$reponse);
        }
        return $this->return_api(HTTP_SUCCESS,MESSAGE_UPDATE_ERROR,$reponse);
    }
    public function active(){
        if(!handle_common_permission_active_and_remove()){
            return $this->return_api(HTTP_BAD_REQUEST,'Tài khoản không có quyền truy cập',array('error_permission' => 'error'), false);
        }
        $id = $this->input->get('id');
        $detail = $this->cuisine_model->find($id);
        if($this->cuisine_category_model->find_rows(array('is_deleted' => 0, 'is_active' => 1,'id' => $detail['cuisine_category_id'])) == 0){
            return $this->return_api(HTTP_BAD_REQUEST,'Danh mục cha của cuisine chưa được duyệt nên bạn không thể duyệt cuisine này',array('error_permission' => 'error'), false);
        }
        $data = array('is_active' => 1);
        $update = $this->cuisine_model->update($id,$data);
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
        if(!handle_common_permission_active_and_remove()){
            return $this->return_api(HTTP_BAD_REQUEST,'Tài khoản không có quyền truy cập',array('error_permission' => 'error'), false);
        }
        $id = $this->input->get('id');
        $data = array('is_active' => 0);
        $update = $this->cuisine_model->update($id,$data);
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
}