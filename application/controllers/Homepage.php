<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Homepage extends Public_Controller {
	public function __construct() {
        parent::__construct();
        $this->load->model('blog_model');
        $this->load->model('province_model');
        $this->load->model('region_model');
        $this->data['lang'] = $this->session->userdata('langAbbreviation');
    }

    public function index(){
    	$blogs = $this->blog_model->get_where_by_limit(9, 0, array(), $this->data['lang']);
    	foreach ($blogs as $key => $value) {
            $province = $this->province_model->find_where(array('id' => $value['province_id']),$this->data['lang']);
            $region = $this->region_model->find_where(array('id' => $province['region_id']),$this->data['lang']);
            $blogs[$key]['province'] = $province;
            $blogs[$key]['region'] = $region;
        }
    	$this->data['blogs'] = $blogs;
        $this->render('homepage_view');
    }
}
