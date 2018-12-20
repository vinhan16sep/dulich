<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cuisine extends Public_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('cuisine_model');
        $this->load->model('cuisine_category_model');
        $this->load->model('region_model');
        $this->load->model('province_model');
        $this->load->helper('common_helper');
        $this->data['lang'] = $this->session->userdata('langAbbreviation');
    }

    public function index(){
    	$this->data['region'][] = $this->cuisine_category_model->get_by_region_all(2);
    	$this->data['region'][] = $this->cuisine_category_model->get_by_region_all(3);
    	$this->data['region'][] = $this->cuisine_category_model->get_by_region_all(4);
    	foreach ($this->data['region'] as $key => $value) {
    		foreach ($value as $k => $val) {
    			$this->data['region'][$key][$k]['cuisine'] = $this->cuisine_model->get_where_array(array('is_active' => 1,'cuisine_category_id' => $val['id']));
    		}
    	}
        $this->render('list_cuisine_view');
    }

    public function detail(){
        $this->render('detail_cuisine_view');
    }
}
