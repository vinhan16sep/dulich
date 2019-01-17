<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends Admin_Controller {

    function __construct(){
        parent::__construct();
        $this->load->model('region_model');
        $this->load->model('province_model');
        $this->load->model('cuisine_model');
        $this->load->model('destination_model');
        $this->load->model('events_model');
        $this->load->model('blog_model');
    }

    public function index(){
    	$total_region = $this->region_model->count_search();
    	$this->data['total_region'] = $total_region;

    	$total_province = $this->province_model->count_search();
    	$this->data['total_province'] = $total_province;

    	$total_cuisine = $this->cuisine_model->count_search();
    	$this->data['total_cuisine'] = $total_cuisine;

    	$total_destination = $this->destination_model->count_search();
    	$this->data['total_destination'] = $total_destination;

    	$total_events = $this->events_model->count_search();
    	$this->data['total_events'] = $total_events;

    	$total_blog = $this->blog_model->count_search();
    	$this->data['total_blog'] = $total_blog;

        $this->render('admin/dashboard_view');
    }
}