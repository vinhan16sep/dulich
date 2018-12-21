<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Destinations extends Public_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('destination_model');
        $this->load->model('region_model');
        $this->load->model('province_model');
    }

    public function index(){
    	$region = $this->region_model->get_by_where();
    	$province = $this->province_model->get_by_where();
    	foreach ($province as $key => $value) {
    		$where = array('province_id' => $value['id']);
    		$province[$key]['destination'] = $this->destination_model->get_by_where($where);
    	}
    	
    	$this->data['region'] = $region;
    	$this->data['province'] = $province;
        $this->render('list_destinations_view');
    }

    public function detail(){
        $this->render('detail_destination_view');
    }
}
