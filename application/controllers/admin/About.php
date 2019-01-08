<?php defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * 
 */
class About extends Admin_Controller{

    function __construct(){
        parent::__construct();
        $this->load->model('about_model');
        $this->load->model('region_model');
        $this->load->model('province_model');
        $this->load->helper('common_helper');
        $this->author_data = handle_author_common_data();
    }

    public function index($slug_type = ''){
        $check = array('bai-viet' => 0, 'dich-vu' => 1,'team' => 2, 'banner' => 3);
        if(!isset($check[$slug_type])){
            redirect('admin');
        }
        $keywords = '';
        if($this->input->get('search')){
            $keywords = $this->input->get('search');
        }
        $this->data['keywords'] = $keywords;
        $total_rows  = $this->region_model->count_search_by_create_by($keywords);
        $this->load->library('pagination');
        $config = array();
        $base_url = base_url('admin/about/index');
        $per_page = 10;
        $uri_segment = 4;
        foreach ($this->pagination_config($base_url, $total_rows, $per_page, $uri_segment) as $key => $value) {
            $config[$key] = $value;
        }
        $this->data['page'] = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $this->pagination->initialize($config);
        $this->data['page_links'] = $this->pagination->create_links();
        $result = $this->about_model->get_all_with_pagination_search_by_create_by_about($per_page, $this->data['page'], $keywords,$check[$slug_type]);
        $this->data['result'] = $result;
        $this->data['type'] = $slug_type;
        $region = $this->region_model->get_all();
        $region = build_array_by_id_for_dropdown($region);

        $province = $this->province_model->get_all();
        $province = build_array_by_id_for_dropdown($province);
        
        $this->data['region'] = $region;
        $this->data['province'] = $province;

        $this->render('admin/about/index');
    }
    public function create($slug_type = ''){
        handle_common_permission(array_merge($this->permission_admin, $this->permission_mod));
        if($slug_type != 'bai-viet'){
            $type = $this->check_slug_type($slug_type);
        }
        $this->data['type'] = $slug_type;
        $this->load->helper('form');
        $this->load->library('form_validation');
        if($slug_type == 'bai-viet' || $slug_type == 'banner'){
            $this->form_validation->set_rules('title_vi', 'Tiêu đề', 'required');
            $this->form_validation->set_rules('title_en', 'Title', 'required');
        }
        $this->form_validation->set_rules('image', 'Hình ảnh', 'callback_check_file');

        if ($this->form_validation->run() == FALSE) {
            $this->render('admin/about/create');
        } else {
            if ($this->input->post()) {
                if(!empty($_FILES['image']['name'])){
                    $this->check_img($_FILES['image']['name'], $_FILES['image']['size']);
                }
                if ( !empty($_FILES['image']['name']) ) {
                    chmod('assets/upload/about/', 0777);
                    $images = $this->upload_image('image', 'assets/upload/about/', $_FILES['image']['name']);
                }
                $data = array(
                    'image' => $images,
                    'type' => $type,
                    'description_vi' => $this->input->post('description_vi'),
                    'description_en' => $this->input->post('description_en'),
                );
                if($slug_type == 'bai-viet' || $slug_type == 'banner'){
                    $data['title_vi'] = $this->input->post('title_vi');
                    $data['title_en'] = $this->input->post('title_en');
                }
                $insert = $this->about_model->insert(array_merge($data, $this->author_data));
                if ($insert) {
                    chmod('assets/upload/about/', 0755);
                    $this->session->set_flashdata('message_success', MESSAGE_CREATE_SUCCESS);
                    redirect('admin/about/'.$slug_type, 'refresh');
                }else{
                    $this->session->set_flashdata('message_error', MESSAGE_CREATE_ERROR);
                    redirect('admin/about/create');
                }
            }
        }
    }

    public function detail($id){
        $detail = $this->about_model->find($id);
        $this->data['detail'] = $detail;
        $this->render('admin/about/detail');
    }

    public function edit($id){
        handle_common_permission(array_merge($this->permission_admin, $this->permission_mod));
        if($id &&  is_numeric($id) && ($id > 0)){
            $detail = $this->about_model->find($id);
            $this->data['detail'] = $detail;
            if ($detail['created_by'] != $this->ion_auth->user()->row()->username) {
                $this->session->set_flashdata('message_error', MESSAGE_ERROR_UPDATE_BY_PERMISSION);
                redirect('admin/about/index', 'refresh');
            }
            $this->load->helper('form');
            $this->load->library('form_validation');
            if($detail['type'] == 0 || $detail['type'] == 3){
                $this->form_validation->set_rules('title_vi', 'Tiêu đề', 'required');
                $this->form_validation->set_rules('title_en', 'Title', 'required');
            }

            if ($this->form_validation->run() == FALSE && ($detail['type'] == 0 || $detail['type'] == 3)) {
                return $this->render('admin/about/edit');
            }else{
                if ($this->input->post()) {
                    if(!empty($_FILES['image']['name'])){
                        $this->check_img($_FILES['image']['name'], $_FILES['image']['size']);
                    }
                    if ( !empty($_FILES['image']['name']) ) {
                        chmod('assets/upload/about/', 0777);
                        $images = $this->upload_image('image', 'assets/upload/about/', $_FILES['image']['name']);
                    }
                    $data = array(
                        'is_active' => 0,
                        'description_vi' => $this->input->post('description_vi'),
                        'description_en' => $this->input->post('description_en'),
                    );
                    if($detail['type'] == 0 || $detail['type'] == 3){
                        $data['title_vi'] = $this->input->post('title_vi');
                        $data['title_en'] = $this->input->post('title_en');
                    }
                    if ( !empty($_FILES['image']['name']) ) {
                        $data['image'] = $images;
                    }
                    $update = $this->about_model->update($id,array_merge($data, $this->author_data));
                    if ($update) {
                        chmod('assets/upload/about/', 0755);
                        $this->session->set_flashdata('message_success', MESSAGE_UPDATE_SUCCESS);
                        if(isset($images) && $images != $detail['image'] && file_exists('assets/upload/about/' . $detail['image'])){
                            unlink('assets/upload/about/' . $detail['image']);
                        }
                        $type = array('bai-viet','dich-vu','team','banner');
                        redirect('admin/about/'.$type[$detail['type']], 'refresh');
                    }else{
                        $this->session->set_flashdata('message_error', MESSAGE_UPDATE_ERROR);
                        redirect('admin/about/edit/' . $id);
                    }
                }
            }
            return $this->render('admin/about/edit');
        }
    }

    public function remove(){
        if(!handle_common_permission_active_and_remove()){
            return $this->return_api(HTTP_BAD_REQUEST,'Tài khoản không có quyền truy cập',array('error_permission' => 'error'), false);
        }
        $id = $this->input->get('id');
        $data = array('is_deleted' => 1);
        $update = $this->about_model->update($id, $data);
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
            redirect('admin/about');
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
            redirect('admin/about');
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
            redirect('admin/about');
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
        $total = $this->about_model->count_is_top(1);
        if(is_numeric($id)){
            $detail = $this->about_model->find($id);
            if($detail['is_top'] == 1){
                $total = $total - 1;
            }
        }
        if($total >=3){
            return $this->return_api(HTTP_SUCCESS,sprintf(MESSAGE_CHECK_TOP_ERROR,'about','about','about','about'),'', false);
        }else{
            return $this->return_api(HTTP_SUCCESS,'','', true);
        }
    }
    public function active(){
        if(!handle_common_permission_active_and_remove()){
            return $this->return_api(HTTP_BAD_REQUEST,'Tài khoản không có quyền truy cập',array('error_permission' => 'error'), false);
        }
        $id = $this->input->get('id');
        $detail = $this->about_model->find($id);
        if($this->about_model->find_rows(array('is_deleted' => 0, 'is_active' => 1)) == 10){
            return $this->return_api(HTTP_BAD_REQUEST,'Số lượng duyệt about giới hạn là 10 đã đủ số lượng vui lòng tắt 1 about khác để tiếp tục',array('error_permission' => 'error'), false);
        }
        $data = array('is_active' => 1);
        $update = $this->about_model->update($id,$data);
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
        $update = $this->about_model->update($id,$data);
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


    function check_slug_type($slug_type){
        $check = array('bai-viet' => 0, 'dich-vu' => 1,'team' => 2, 'banner' => 3);
        $number = array('',3,1,1);
        $message = array('',MESSAGE_CREATE_ERROR_SERVICE,MESSAGE_CREATE_ERROR_TEAM,MESSAGE_CREATE_ERROR_BANNER);
        if(!empty($check[$slug_type])){
            $number_post = $this->about_model->find_rows(array('type' => $check[$slug_type], 'is_deleted' => 0));
            if($number_post >= $number[$check[$slug_type]]){
                $this->session->set_flashdata('message_error', $message[$check[$slug_type]]);
                redirect('admin/about/'.$slug_type, 'refresh');
            }
            return $check[$slug_type];
        }
        return redirect('admin');
    }
}