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

    // list all cuisine của region
    public function region($slug){
        $this->data['region_full'] = $this->region_model->get_by_where();
        $region = $this->region_model->find_where(array('slug' => $slug));
        if(!empty($region)){
            // get all cuisine thuộc miền
            $cuisine_category = $this->cuisine_category_model->get_by_where();
            foreach ($cuisine_category as $key => $value) {
                $cuisine_category[$key]['cuisine'] = $this->cuisine_model->get_by_where(array('cuisine_category_id' => $value['id'], 'region_id' => $region['id']));
            }
            $this->data['region'] = $region;
            $this->data['cuisine_category'] = $cuisine_category;
            return $this->render('list_cuisine_view');
        }
        //return view 404
        echo 'Lỗi 404';
        return false;
    }

    // list all cuisine của region và category
    // public function category($region_slug,$slug){
    //     $cuisine_category = $this->cuisine_category_model->find_where(array('slug' => $slug));
    //     if(!empty($cuisine_category)){
    //         $region = $this->region_model->find_where(array('slug' => $region_slug));
    //         if(!empty($region)){
    //             // get all cuisine thuộc miền
    //             $cuisine = $this->cuisine_model->find_where(array('cuisine_category_id' => $cuisine_category['id'], 'region_id' => $region['id']));
               
    //             $this->data['region'] = $region;
    //             $this->data['cuisine'] = $cuisine;
    //             echo '<pre>';
    //             print_r($this->data['cuisine']);
    //             echo '</pre>';die;

    //             echo 'Trang danh sách cuisine của region';
    //             return false;

                        
    //             return $this->render('list_cuisine_view');
    //         }
    //     }
    //     //return view 404
    //     echo 'Lỗi 404';
    //     return false;
    // }

    public function detail(){
        $this->render('detail_cuisine_view');
    }
}
