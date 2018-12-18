<?php defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * 
 */
class Province extends Admin_Controller{

	function __construct(){
        parent::__construct();
        $this->load->model('province_model');
        $this->load->model('region_model');
        $this->load->model('blog_model');
        $this->load->helper('common_helper');
        $this->author_data = handle_author_common_data();
    }

    public function index(){
        handle_common_permission($this->permission_admin);
    	$keywords = '';
        if($this->input->get('search')){
            $keywords = $this->input->get('search');
        }
        $this->data['keywords'] = $keywords;
        $total_rows  = $this->region_model->count_search($keywords);
        $this->load->library('pagination');
        $config = array();
        $base_url = base_url('admin/province/index');
        $per_page = 10;
        $uri_segment = 4;
        foreach ($this->pagination_config($base_url, $total_rows, $per_page, $uri_segment) as $key => $value) {
            $config[$key] = $value;
        }
        $this->data['page'] = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $this->pagination->initialize($config);
        $this->data['page_links'] = $this->pagination->create_links();
        $result = $this->province_model->get_all_with_pagination_search($per_page, $this->data['page'], $keywords);
        $this->data['result'] = $result;

        $region = $this->region_model->get_all();
    	$region = build_array_by_id_for_dropdown($region);
    	$this->data['region'] = $region;

        $this->render('admin/province/index');
    }

    public function create(){
    	handle_common_permission($this->permission_admin);
    	$region = $this->region_model->get_all();
    	$region = build_array_by_id_for_dropdown($region);
    	$this->data['region'] = $region;

    	$this->load->helper('form');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('title_vi', 'Tiêu đề', 'required');
        $this->form_validation->set_rules('title_en', 'Title', 'required');
        $this->form_validation->set_rules('region_id', 'Vùng miền', 'required');
        $this->form_validation->set_rules('image', 'Hình ảnh', 'callback_check_file');

        if ($this->form_validation->run() == FALSE) {
        	$this->render('admin/province/create');
        } else {
        	if ($this->input->post()) {
        		if(!empty($_FILES['image']['name'][0])){
	                $this->check_multiple_imgs($_FILES['image']['name'], $_FILES['image']['size']);
	            }
	            $slug = $this->input->post('slug');
	            $unique_slug = $this->province_model->build_unique_slug($slug);
	            if(!file_exists('assets/upload/province/' . $unique_slug) && (!!empty($_FILES['image']['name'][0]) || !!empty($_FILES['dateimg']['name']) || !!empty($_FILES['image_localtion']['name']))){
	                mkdir('assets/upload/province/' . $unique_slug, 0777);
	            }
	            if ( !empty($_FILES['image']['name'][0]) ) {
	            	chmod('assets/upload/province/' . $unique_slug, 0777);
	            	$images = $this->upload_multiple_image('assets/upload/province/' . $unique_slug, 'image');
	            	$avatar = $images[0];
	            }
	            $images = json_encode($images);
	            $data = array(
	                'image' => $images,
	                'avatar' => $avatar,
	                'slug' => $unique_slug,
	                'region_id' => $this->input->post('region_id'),
	                'title_vi' => $this->input->post('title_vi'),
	                'title_en' => $this->input->post('title_en'),
	                'description_vi' => $this->input->post('description_vi'),
	                'description_en' => $this->input->post('description_en'),
	            );
	            $insert = $this->province_model->insert(array_merge($data, $this->author_data));
	            if ($insert) {
	            	chmod('assets/upload/province/' . $unique_slug, 0755);
	            	$this->session->set_flashdata('message_success', MESSAGE_CREATE_SUCCESS);
	            	redirect('admin/province', 'refresh');
	            }else{
	            	$this->session->set_flashdata('message_error', MESSAGE_CREATE_ERROR);
	            	redirect('admin/province/create');
	            }
        	}
        }
    }

    public function detail($id){
        handle_common_permission($this->permission_admin);
    	$detail = $this->province_model->find($id);
    	$region = $this->region_model->find($detail['region_id']);
    	$this->data['detail'] = $detail;
    	$this->data['region'] = $region;
    	$this->render('admin/province/detail');
    }

    public function edit($id){
    	handle_common_permission($this->permission_admin);
    	if($id &&  is_numeric($id) && ($id > 0)){
    		$region = $this->region_model->get_all();
	    	$region = build_array_by_id_for_dropdown($region);
	    	$this->data['region'] = $region;

	    	$this->load->helper('form');
	        $this->load->library('form_validation');

	        $this->form_validation->set_rules('title_vi', 'Tiêu đề', 'required');
	        $this->form_validation->set_rules('title_en', 'Title', 'required');
	        $this->form_validation->set_rules('region_id', 'Vùng miền', 'required');

	        $detail = $this->province_model->find($id);
	        $this->data['detail'] = $detail;
	        if ($this->form_validation->run() == FALSE) {
	        	$this->render('admin/province/edit');
	        }else{
	        	if ($this->input->post()) {
	        		if( !empty($_FILES['image']['name'][0]) ){
		                $this->check_multiple_imgs($_FILES['image']['name'], $_FILES['image']['size']);
		            }

		            $slug = $this->input->post('slug');
		            $unique_slug = $detail['slug'];
		            if ($slug != $unique_slug) {
		            	$unique_slug = $this->province_model->build_unique_slug($slug);
		            	if(file_exists('assets/upload/province/' . $unique_slug)) {
		            		chmod('assets/upload/province/' . $unique_slug, 0777);
	                        rename('assets/upload/province/' . $unique_slug, 'assets/upload/province/' . $unique_slug);
	                    }
		            }
		            

		            $old_images = json_decode($detail['image']);
		            if ( !empty($_FILES['image']['name'][0]) ) {
		            	chmod('assets/upload/province/' . $unique_slug, 0777);
		            	$new_images = $this->upload_multiple_image('assets/upload/province/'.$unique_slug, 'image');
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
		                'region_id' => $this->input->post('region_id'),
		                'title_vi' => $this->input->post('title_vi'),
		                'title_en' => $this->input->post('title_en'),
		                'description_vi' => $this->input->post('description_vi'),
		                'description_en' => $this->input->post('description_en'),
		            );
		            if ( !empty($_FILES['image']['name'][0]) ) {
		            	$data['image'] = $images;
		            }
		            $update = $this->province_model->update($id,array_merge($data, $this->author_data));
		            if ($update) {
		            	chmod('assets/upload/province/' . $unique_slug, 0755);
		            	$this->session->set_flashdata('message_success', MESSAGE_CREATE_SUCCESS);
		            	redirect('admin/province/index', 'refresh');
		            }else{
		            	$this->session->set_flashdata('message_error', MESSAGE_CREATE_ERROR);
		            	redirect('admin/province/edit/' . $id);
		            }
	        	}
	        }
	    }
    }

    public function remove(){
    	handle_common_permission($this->permission_admin);
        $id = $this->input->get('id');

        $check_blog = $this->check_blog($id);

        if ($check_blog == false) {
            return $this->output
                ->set_content_type('application/json')
                ->set_status_header(HTTP_SUCCESS)
                ->set_output(json_encode(array('status' => HTTP_SUCCESS, 'isExisted' => false, 'message' => 'Không thể xóa do có Bài viết thuộc Tỉnh / Thành phố này')));
        }

        $data = array('is_deleted' => 1);
        $update = $this->province_model->update($id, $data);
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
        $detail = $this->province_model->find($id);
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

        $update = $this->province_model->update($id,$data);
        if($update == 1){
            if($image != '' && file_exists('assets/upload/province/'.$detail['slug'].'/'.$image)){
                unlink('assets/upload/province/'.$detail['slug'].'/'.$image);
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
        $update = $this->province_model->update($id,$data);
        if($update == 1){
            $detail = $this->province_model->find($id);
            return $this->output
                ->set_content_type('application/json')
                ->set_status_header(HTTP_SUCCESS)
                ->set_output(json_encode(array('status' => HTTP_SUCCESS, 'isExisted' => true, 'image_path' => base_url('assets/upload/province/' . $detail['slug'] . '/' . $image) )));
        }
            return $this->output
                    ->set_content_type('application/json')
                    ->set_status_header(HTTP_BAD_REQUEST)
                    ->set_output(json_encode(array('status' => HTTP_BAD_REQUEST)));
    }

    public function active(){
        handle_common_permission($this->permission_admin);
        $id = $this->input->get('id');
        $data = array('is_active' => 1);
        $update = $this->province_model->update($id, $data);
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

    public function deactive(){
        handle_common_permission($this->permission_admin);
        $id = $this->input->get('id');
        //check
        $check_blog = $this->check_blog($id);

        if ($check_blog == false) {
            return $this->output
                ->set_content_type('application/json')
                ->set_status_header(HTTP_SUCCESS)
                ->set_output(json_encode(array('status' => HTTP_SUCCESS, 'isExisted' => false, 'message' => 'Không thể tắt do có Bài viết thuộc Tỉnh / Thành phố này')));
        }

        $data = array('is_active' => 0);
        $update = $this->province_model->update($id,$data);
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
            redirect('admin/province');
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
            redirect('admin/province');
        }
    }

    public function check_file(){
	    $this->form_validation->set_message(__FUNCTION__, 'Vui lòng chọn ảnh.');
	    if (!empty($_FILES['image']['name'][0])) {
            return true;
        }
        return true;
	}

    private function check_blog($province_id){
        $total = $this->blog_model->count_by_field('province_id', $province_id);
        if ($total > 0) {
            return false;
        }
        return true;
    }
}