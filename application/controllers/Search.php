<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Search extends Public_Controller {
	public function __construct() {
        parent::__construct();
//        $this->load->model('blog_model');
//        $this->load->model('province_model');
//        $this->load->model('region_model');
//        $this->load->model('cuisine_model');
//        $this->data['lang'] = $this->session->userdata('langAbbreviation');
//        $this->data['url'] = array(
//            'destination' => 'diem-den',
//            'cuisine' => 'mon-an',
//            'events' => 'su-kien',
//            'blog' => 'bai-viet',
//        );
    }

    public function index(){
//        if(in_array($this->input->post('table'), array('destination','cuisine','events','blog'))){
//            $this->data['table'] = $this->input->post('table');
//            $this->data['search'] = $this->input->post('table');
//            if($this->input->post('table') == 'cuisine'){
//                $this->data['search'] = $this->cuisine_model->get_search($this->input->post('table'),$this->input->post('search'),$this->data['lang']);
//            }else{
//                $this->data['search'] = $this->region_model->get_search($this->input->post('table'),$this->input->post('search'),$this->data['lang']);
//            }
//            // echo "<pre>";
//            // print_r($this->data['search']);
//            // echo "<pre>";
//            return $this->render('search_view');
//        }
//        //return view 404
//        echo 'Lỗi 404';
//        return false;

        $this->render('search_view');
    }
}
