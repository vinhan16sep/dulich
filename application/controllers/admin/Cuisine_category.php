<?php defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * 
 */
class Cuisine_category extends Admin_Controller{

    function __construct(){
        parent::__construct();
        $this->load->model('cuisine_category_model');
        $this->load->model('cuisine_model');
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
        $total_rows  = $this->region_model->count_search_by_create_by($keywords);
        $this->load->library('pagination');
        $config = array();
        $base_url = base_url('admin/cuisine_category/index');
        $per_page = 10;
        $uri_segment = 4;
        foreach ($this->pagination_config($base_url, $total_rows, $per_page, $uri_segment) as $key => $value) {
            $config[$key] = $value;
        }
        $this->data['page'] = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $this->pagination->initialize($config);
        $this->data['page_links'] = $this->pagination->create_links();
        $result = $this->cuisine_category_model->get_all_with_pagination_search_by_create_by($per_page, $this->data['page'], $keywords);
        $this->data['result'] = $result;

        $region = $this->region_model->get_all();
        $region = build_array_by_id_for_dropdown($region);

        $province = $this->province_model->get_all();
        $province = build_array_by_id_for_dropdown($province);
        
        $this->data['region'] = $region;
        $this->data['province'] = $province;

        $this->render('admin/cuisine_category/index');
    }

    public function create(){
        redirect('admin/cuisine_category');
        handle_common_permission(array_merge($this->permission_admin, $this->permission_mod));
        // Get all region
        $region = $this->region_model->get_all();
        $region = build_array_by_id_for_dropdown($region);
        $this->data['region'] = $region;


        $this->load->helper('form');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('title_vi', 'Tiêu đề', 'required');
        $this->form_validation->set_rules('title_en', 'Title', 'required');
        $this->form_validation->set_rules('image', 'Hình ảnh', 'callback_check_file');

        if ($this->form_validation->run() == FALSE) {
            $this->render('admin/cuisine_category/create');
        } else {
            if ($this->input->post()) {
                if(!empty($_FILES['image']['name'])){
                    $this->check_img($_FILES['image']['name'], $_FILES['image']['size']);
                }
                $slug = $this->input->post('slug');
                $unique_slug = $this->cuisine_category_model->build_unique_slug($slug);
                if(!file_exists('assets/upload/cuisine_category/' . $unique_slug)){
                    mkdir('assets/upload/cuisine_category/' . $unique_slug, 0777);
                }
                if ( !empty($_FILES['image']['name']) ) {
                    chmod('assets/upload/cuisine_category/' . $unique_slug, 0777);
                    $images = $this->upload_image('image', 'assets/upload/cuisine_category/' . $unique_slug, $_FILES['image']['name']);
                }
                $data = array(
                    'image' => $images,
                    'slug' => $unique_slug,
                    'title_vi' => $this->input->post('title_vi'),
                    'title_en' => $this->input->post('title_en'),
                    'metakeywords_vi' => $this->input->post('metakeywords_vi'),
                    'metakeywords_en' => $this->input->post('metakeywords_en'),
                    'metadescription_vi' => $this->input->post('metadescription_vi'),
                    'metadescription_en' => $this->input->post('metadescription_en'),
                    'description_vi' => $this->input->post('description_vi'),
                    'description_en' => $this->input->post('description_en'),
                );
                $insert = $this->cuisine_category_model->insert(array_merge($data, $this->author_data));
                if ($insert) {
                    chmod('assets/upload/cuisine_category/' . $unique_slug, 0755);
                    $this->session->set_flashdata('message_success', MESSAGE_CREATE_SUCCESS);
                    redirect('admin/cuisine_category', 'refresh');
                }else{
                    $this->session->set_flashdata('message_error', MESSAGE_CREATE_ERROR);
                    redirect('admin/cuisine_category/create');
                }
            }
        }
    }

    public function detail($id){
        $detail = $this->cuisine_category_model->find($id);
        $this->data['detail'] = $detail;
        $this->render('admin/cuisine_category/detail');
    }

    public function edit($id){
        handle_common_permission(array_merge($this->permission_admin, $this->permission_manager, $this->permission_mod));
        if($id &&  is_numeric($id) && ($id > 0)){
            $detail = $this->cuisine_category_model->find($id);
            $this->data['detail'] = $detail;
            if ( $this->ion_auth->in_group('mod') ) {
                if ($detail['created_by'] != $this->ion_auth->user()->row()->username) {
                    $this->session->set_flashdata('message_error', MESSAGE_ERROR_UPDATE_BY_PERMISSION);
                    redirect('admin/cuisine_category/index', 'refresh');
                }
            }

            $this->load->helper('form');
            $this->load->library('form_validation');

            $this->form_validation->set_rules('title_vi', 'Tiêu đề', 'required');
            $this->form_validation->set_rules('title_en', 'Title', 'required');

            if ($this->form_validation->run() == FALSE) {
                $this->render('admin/cuisine_category/edit');
            }else{
                if ($this->input->post()) {
                    if(!empty($_FILES['image']['name'])){
                        $this->check_img($_FILES['image']['name'], $_FILES['image']['size']);
                    }

                    $slug = $this->input->post('slug');
                    $unique_slug = $detail['slug'];
                    if ($slug != $unique_slug) {
                        $unique_slug = $this->cuisine_category_model->build_unique_slug($slug);
                        if(file_exists('assets/upload/cuisine_category/' . $detail['slug'])) {
                            chmod('assets/upload/cuisine_category/' . $detail['slug'], 0777);
                            rename('assets/upload/cuisine_category/' . $detail['slug'], 'assets/upload/cuisine_category/' . $unique_slug);
                        }
                    }
                    
                    if ( !empty($_FILES['image']['name']) ) {
                        chmod('assets/upload/cuisine_category/' . $unique_slug, 0777);
                        $images = $this->upload_image('image', 'assets/upload/cuisine_category/' . $unique_slug, $_FILES['image']['name']);
                    }

                    $data = array(
                        'slug' => $unique_slug,
                        'title_vi' => $this->input->post('title_vi'),
                        'title_en' => $this->input->post('title_en'),
                        'metakeywords_vi' => $this->input->post('metakeywords_vi'),
                        'metakeywords_en' => $this->input->post('metakeywords_en'),
                        'metadescription_vi' => $this->input->post('metadescription_vi'),
                        'metadescription_en' => $this->input->post('metadescription_en'),
                        'description_vi' => $this->input->post('description_vi'),
                        'description_en' => $this->input->post('description_en'),
                    );
                    if ( !empty($_FILES['image']['name']) ) {
                        $data['image'] = $images;
                    }
                    $update = $this->cuisine_category_model->update($id,array_merge($data, $this->author_data));
                    if ($update) {
                        chmod('assets/upload/cuisine_category/' . $unique_slug, 0755);
                        $this->session->set_flashdata('message_success', MESSAGE_UPDATE_SUCCESS);
                        if(isset($images) && $images != $detail['image'] && file_exists('assets/upload/cuisine_category/'.$unique_slug.'/'.$detail['image'])){
                            unlink('assets/upload/cuisine_category/'.$unique_slug.'/'.$detail['image']);
                        }
                        redirect('admin/cuisine_category/index', 'refresh');
                    }else{
                        $this->session->set_flashdata('message_error', MESSAGE_UPDATE_ERROR);
                        redirect('admin/cuisine_category/edit/' . $id);
                    }
                }
            }
        }
    }

    public function active(){
        if(!handle_common_permission_active_and_remove()){
            return $this->return_api(HTTP_BAD_REQUEST,'Tài khoản không có quyền truy cập',array('error_permission' => 'error'), false);
        }
        $id = $this->input->get('id');
        $data = array('is_active' => 1);
        $update = $this->cuisine_category_model->update($id,$data);
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
        $number_cuisine = $this->cuisine_model->find_rows(array('cuisine_category_id' => $id,'is_deleted' => 0,'is_active' => 1));
        if($number_cuisine > 0){
            return $this->output
                    ->set_content_type('application/json')
                    ->set_status_header(HTTP_BAD_REQUEST)
                    ->set_output(json_encode(array('status' => HTTP_BAD_REQUEST, 'message' => 'Bạn không thể tắt danh mục này')));
        }
        $data = array('is_active' => 0);
        $update = $this->cuisine_category_model->update($id,$data);
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
    public function remove(){
        if(!handle_common_permission_active_and_remove()){
            return $this->return_api(HTTP_BAD_REQUEST,'Tài khoản không có quyền truy cập',array('error_permission' => 'error'), false);
        }
        $id = $this->input->get('id');
        $number_cuisine = $this->cuisine_model->find_rows(array('cuisine_category_id' => $id,'is_deleted' => 0));
        if($number_cuisine > 0){
            return $this->output
                    ->set_content_type('application/json')
                    ->set_status_header(HTTP_BAD_REQUEST)
                    ->set_output(json_encode(array('status' => HTTP_BAD_REQUEST, 'message' => 'Bạn không thể xóa danh mục này')));
        }
        $data = array('is_deleted' => 1);
        $update = $this->cuisine_category_model->update($id, $data);
        if($update == 1){
            return $this->output
                ->set_content_type('application/json')
                ->set_status_header(HTTP_SUCCESS)
                ->set_output(json_encode(array('status' => HTTP_SUCCESS, 'isExisted' => true)));
        }
            return $this->output
                    ->set_content_type('application/json')
                    ->set_status_header(HTTP_BAD_REQUEST)
                    ->set_output(json_encode(array('status' => HTTP_BAD_REQUEST, 'message' => 'Bạn không thể xóa danh mục này')));
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
    protected function check_img($filename, $filesize){
        $reponse = array(
            'csrf_hash' => $this->security->get_csrf_hash()
        );
        $map = strripos($filename, '.')+1;
        $fileextension = substr($filename, $map,(strlen($filename)-$map));
        if(!($fileextension == 'jpg' || $fileextension == 'jpeg' || $fileextension == 'png' || $fileextension == 'gif'  || $filesize > 1228800)){
            $this->session->set_flashdata('message_error', sprintf(MESSAGE_PHOTOS_ERROR, 1200));
            redirect('admin/cuisine_category');
        }
    }

    public function check_file(){
        $this->form_validation->set_message(__FUNCTION__, 'Vui lòng chọn ảnh.');
        if (!empty($_FILES['image']['name'])) {
            return true;
        }
        return true;
    }
}