<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Events extends Public_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('events_model');
        $this->load->model('region_model');
        $this->load->model('province_model');
        $this->load->helper('common_helper');
        $this->data['lang'] = $this->session->userdata('langAbbreviation');
    }

    public function index(){
    	$this->data['region'][] = $this->events_model->get_by_region_all(2);
    	$this->data['region'][] = $this->events_model->get_by_region_all(3);
    	$this->data['region'][] = $this->events_model->get_by_region_all(4);
        $this->render('list_events_view');
    }

    public function detail($slug){
    	$this->data['detail'] = $this->events_model->find_slug($slug);
    	$this->data['get_related'] = $this->events_model->get_related($this->data['detail']['region_id'],$this->data['detail']['id']);
        $this->render('detail_event_view');
    }
}
