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

    function index($slug = ''){
        $cuisine = $this->cuisine_model->find_where(array('slug' => $slug),$this->data['lang']);
        if(!empty($cuisine['id'])){
            $cuisine_category = $this->cuisine_category_model->find_where(array('id' => $cuisine['cuisine_category_id']),$this->data['lang']);
            $region = $this->region_model->find_where(array('id' => $cuisine['region_id']),$this->data['lang']);
            if(!empty($cuisine_category['id']) && !empty($region['id'])){
                $this->data['metakeywords'] = $cuisine['metakeywords'];
                $this->data['metadescription'] = $cuisine['metadescription'];
               
                $this->data['region'] = $region;
                $this->data['cuisine'] = $cuisine;
                $this->data['cuisine_category'] = $cuisine_category;
                $this->data['get_related'] = $this->cuisine_model->get_by_where($this->data['lang'],array('cuisine.cuisine_category_id' => $cuisine_category['id'], 'cuisine.region_id' => $region['id']),3,$cuisine['id']);
                foreach ($this->data['get_related'] as $key => $value) {
                    if($value['province_id'] != 0){
                     $this->data['get_related'][$key]['province'] = $this->province_model->find_where(array('id' => $value['province_id']), $this->data['lang'])['title'];
                    }else{
                        $this->data['get_related'][$key]['province'] = '';
                    }
                }
                return $this->render('detail_cuisine_view');
            }
        }
        echo 'Lỗi 404';
        return false;
    }

    // list all cuisine của region
    public function region($slug){
        $this->data['region_full'] = $this->region_model->get_all_order_by(1, 'id', 'asc',$this->data['lang']);
        $region = $this->region_model->find_where(array('slug' => $slug),$this->data['lang']);
        $this->data['metakeywords'] = $region['metakeywords'];
        $this->data['metadescription'] = $region['metadescription'];
        if(!empty($region)){
            // get all cuisine thuộc miền
            $cuisine_category = $this->cuisine_category_model->get_by_where(array(),$this->data['lang']);
            foreach ($cuisine_category as $key => $value) {
                $cuisine_category[$key]['cuisine'] = $this->cuisine_model->get_by_where($this->data['lang'],array('cuisine_category_id' => $value['id'], 'region_id' => $region['id']));
                foreach ($cuisine_category[$key]['cuisine'] as $k => $val) {
                    if($val['province_id'] != 0){
                     $cuisine_category[$key]['cuisine'][$k]['province'] = $this->province_model->find_where(array('id' => $val['province_id']), $this->data['lang'])['title'];
                    }else{
                        $cuisine_category[$key]['cuisine'][$k]['province'] = '';
                    }
                }
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
    // public function detail($region_slug,$category_slug,$slug){
    //     $this->data['region_full'] = $this->region_model->get_by_where(array(),$this->data['lang']);
    //     $cuisine_category = $this->cuisine_category_model->find_where(array('slug' => $category_slug),$this->data['lang']);
    //     if(!empty($cuisine_category)){
    //         $region = $this->region_model->find_where(array('slug' => $region_slug),$this->data['lang']);
    //         if(!empty($region)){
    //             // get all cuisine thuộc miền
    //             $cuisine = $this->cuisine_model->find_where(array('cuisine_category_id' => $cuisine_category['id'], 'region_id' => $region['id'],'slug' => $slug),$this->data['lang']);
    //             $this->data['metakeywords'] = $cuisine['metakeywords'];
    //             $this->data['metadescription'] = $cuisine['metadescription'];
               
    //             $this->data['region'] = $region;
    //             $this->data['cuisine'] = $cuisine;
    //             $this->data['cuisine_category'] = $cuisine_category;
    //             $this->data['get_related'] = $this->cuisine_model->get_by_where($this->data['lang'],array('cuisine_category_id' => $cuisine_category['id'], 'region_id' => $region['id']),3,$cuisine['id']);

    //             return $this->render('detail_cuisine_view');
    //         }
    //     }
    //     //return view 404
    //     echo 'Lỗi 404';
    //     return false;
    // }

    // public function detail(){
    //     $this->render('detail_cuisine_view');
    // }
}
