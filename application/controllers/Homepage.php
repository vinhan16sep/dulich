<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Homepage extends Public_Controller {
	public function __construct() {
        parent::__construct();
        $this->load->model('blog_model');
        $this->load->model('province_model');
        $this->load->model('region_model');
        $this->load->model('destination_model');
        $this->load->model('events_model');
        $this->load->model('banner_model');
        $this->data['lang'] = $this->session->userdata('langAbbreviation');
    }

    public function index(){

        $this->data['metakeywords'] = 'Home';
        $this->data['metadescription'] = 'Home';
        $this->data['region'] = $this->region_model->get_by_where(array(),$this->data['lang'],['id','asc']);
    	// get banner
    	$banners = $this->banner_model->get_where_by_limit(100, 0, array(), $this->data['lang']);
    	foreach ($banners as $key => $value) {
    		$province = $this->province_model->find_where(array('id' => $value['province_id']),$this->data['lang']);
    		$banners[$key]['province'] = $province;
    	}
    	$this->data['banners'] = $banners;

    	//get north of vietnam
//    	$destination_north = $this->destination_model->get_where_by_limit(2, 0, array('region_id' => 2), $this->data['lang'] );
//    	if ($destination_north) {
//    		foreach ($destination_north as $key => $value) {
//	    		$province_center = $this->province_model->find_where(array('id' => $value['province_id']), $this->data['lang'] );
//	    		$destination_north[$key]['province'] = $province_center;
//	    	}
//    	}
//
//    	$this->data['destination_north'] = $destination_north;

        $province_north = $this->province_model->get_where_by_limit(4, 0, array('region_id' => 3), $this->data['lang'] );
        $this->data['province_north'] = $province_north;

    	$province_center = $this->province_model->get_where_by_limit(4, 0, array('region_id' => 3), $this->data['lang'] );
    	$this->data['province_center'] = $province_center;

    	$province_center_all = $this->province_model->get_where_by_limit(100, 0, array('region_id' => 3), $this->data['lang'] );
    	$this->data['province_center_all'] = $province_center_all;

    	$province_south = $this->province_model->get_where_by_limit(4, 0, array('region_id' => 4), $this->data['lang'] );
    	$this->data['province_south'] = $province_south;


    	// get event
    	$events = $this->events_model->get_where_by_limit(7, 0, array(), $this->data['lang']);
    	if ($events) {
    		foreach ($events as $key => $value) {
	    		$province = $this->province_model->find_where(array('id' => $value['province_id']),$this->data['lang']);
	    		$region = $this->region_model->find_where(array('id' => $province['region_id']),$this->data['lang']);
	    		$events[$key]['province'] = $province;
	    		$events[$key]['region'] = $region;
	    	}
    	}
    	
    	$this->data['events'] = $events;

    	// get blog
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

    public function change_language(){
        if($this->session->userdata('langAbbreviation') == $this->input->get('lang')){
            return $this->return_api(HTTP_SUCCESS, MESSAGE_UPDATE_SUCCESS, $this->session->userdata('langAbbreviation'), null);
        }else{
            $this->session->set_userdata('langAbbreviation', $this->input->get('lang'));
            if($this->session->userdata('langAbbreviation') == $this->input->get('lang')){
                return $this->return_api(HTTP_SUCCESS, MESSAGE_CHANGE_LANGUAGE_SUCCESS, $this->session->userdata('langAbbreviation'), null);
            }else{
                return $this->return_api(HTTP_SUCCESS, MESSAGE_CHANGE_LANGUAGE_FAIL, $this->session->userdata('langAbbreviation'), null);
            }
        }
    }
}
