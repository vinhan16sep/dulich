<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class About extends Public_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('about_model');
        $this->data['lang'] = $this->session->userdata('langAbbreviation');
    }

    public function index(){
    	$this->data['blogs'] = $this->about_model->get_by_region_about('', '',$type = 0,$this->data['lang']);
    	$this->data['services'] = $this->about_model->get_by_region_about(3, 0,$type = 1,$this->data['lang']);
    	$this->data['team'] = $this->about_model->get_by_region_about(1, 0,$type = 2,$this->data['lang']);
    	$this->data['banner'] = $this->about_model->get_by_region_about(1, 0,$type = 3,$this->data['lang']);
        $this->render('about_view');
    }
}
