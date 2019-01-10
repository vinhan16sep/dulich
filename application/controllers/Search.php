<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Search extends Public_Controller {
	public function __construct() {
        parent::__construct();
       $this->load->model('blog_model');
       $this->load->model('province_model');
       $this->load->model('region_model');
       $this->load->model('cuisine_model');
       $this->data['lang'] = $this->session->userdata('langAbbreviation');
       $this->data['url'] = array(
           'destination' => 'diem-den',
           'cuisine' => 'mon-an',
           'events' => 'su-kien',
           'blog' => 'bai-viet',
       );
    }

    // public function index(){
    //    	$this->data['keywords'] = $this->input->get('keywords');
    //    	$this->data['destination'] = $this->region_model->get_search('destination',$this->input->get('keywords'),$this->data['lang']);
    //    	return $this->render('search_view');
    // }

    public function index(){
       $this->data['keywords'] = $this->input->get('keywords');
       $this->data['cuisines'] = $this->cuisine_model->get_search('cuisine',$this->input->get('keywords'),$this->data['lang']);
       $this->data['destinations'] = $this->region_model->get_search('destination',$this->input->get('keywords'),$this->data['lang']);
       $this->data['blogs'] = $this->region_model->get_search('blog',$this->input->get('keywords'),$this->data['lang']);
       $this->data['events'] = $this->region_model->get_search('events',$this->input->get('keywords'),$this->data['lang']);
       return $this->render('search_view');
    }
}
