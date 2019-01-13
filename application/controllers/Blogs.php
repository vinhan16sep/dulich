<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Blogs extends Public_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('blog_model');
        $this->load->model('region_model');
        $this->load->model('province_model');
        $this->load->helper('common_helper');
        $this->data['lang'] = $this->session->userdata('langAbbreviation');
    }

    public function index(){
        $region = $this->region_model->get_all_order_by(1, 'id', 'asc',$this->data['lang']);
        $this->data['region'] = $region;

        $region_first = reset($region);
        $region_detail = $this->region_model->find_where(array('slug' => $region_first['slug']),$this->data['lang']);
        $this->data['region_detail'] = $region_detail;

        $blogs = $this->blog_model->get_where_by_limit(6, 0, array('region_id' => $region_detail['id']),$this->data['lang']);
        foreach ($blogs as $key => $value) {
            $province = $this->province_model->find_where(array('id' => $value['province_id']),$this->data['lang']);
            $blogs[$key]['province'] = $province;
        }
        $this->data['blogs'] = $blogs;

        $blogs_top = $this->blog_model->get_where_by_limit(3, 0, array('region_id' => $region_detail['id'], 'is_top' => 1),$this->data['lang']);
        foreach ($blogs_top as $key => $value) {
            $province = $this->province_model->find_where(array('id' => $value['province_id']),$this->data['lang']);
            $blogs_top[$key]['province'] = $province;
        }
        $this->data['blogs_top'] = $blogs_top;


        $this->render('list_blogs_view');
    }

    public function detail($region_slug, $province_slug, $slug){
        $region = $this->region_model->find_where(array('slug' => $region_slug),$this->data['lang']);
        $province = $this->province_model->find_where(array('slug' => $province_slug),$this->data['lang']);
        if (!empty($region) && !empty($province)) {
            $this->data['region'] = $region;
            $region_all = $this->region_model->get_all_order_by(1, 'id', 'asc',$this->data['lang']);
            $this->data['region_all'] = $region_all;

            $blog = $this->blog_model->find_where(array('slug' => $slug),$this->data['lang']);
            $this->data['metakeywords'] = $blog['metakeywords'];
            $this->data['metadescription'] = $blog['metadescription'];
            $this->data['blog'] = $blog;
            $blogs_top = $this->blog_model->get_where_by_limit(3, 0, array('region_id' => $region['id'], 'is_top' => 1),$this->data['lang']);
            foreach ($blogs_top as $key => $value) {
                $province = $this->province_model->find_where(array('id' => $value['province_id']),$this->data['lang']);
                $blogs_top[$key]['province'] = $province;
            }
            $this->data['blogs_top'] = $blogs_top;

            $this->render('detail_blog_view');
        }
    }

    // list all blog của region
    public function region($slug){
        $region_detail = $this->region_model->find_where(array('slug' => $slug),$this->data['lang']);
        $this->data['metakeywords'] = $region_detail['metakeywords'];
        $this->data['metadescription'] = $region_detail['metadescription'];
        echo "<pre>";
        print_r($region_detail);
        echo "<pre>";die;
        if(!empty($region_detail)){
            // dữ liệu miền cho blog
            $region = $this->region_model->get_all_order_by(1, 'id', 'asc',$this->data['lang']);
            $this->data['region'] = $region;
            $this->data['region_detail'] = $region_detail;

            $blogs = $this->blog_model->get_where_by_limit(6, 0, array('region_id' => $region_detail['id']),$this->data['lang']);
            foreach ($blogs as $key => $value) {
                $province = $this->province_model->find_where(array('id' => $value['province_id']),$this->data['lang']);
                $blogs[$key]['province'] = $province;
            }
            $this->data['blogs'] = $blogs;

            $blogs_top = $this->blog_model->get_where_by_limit(3, 0, array('region_id' => $region_detail['id'], 'is_top' => 1),$this->data['lang']);
            foreach ($blogs_top as $key => $value) {
                $province = $this->province_model->find_where(array('id' => $value['province_id']),$this->data['lang']);
                $blogs_top[$key]['province'] = $province;
            }
            $this->data['blogs_top'] = $blogs_top;

                    
            return $this->render('list_blogs_view');
        }
        //return view 404
        echo 'Lỗi 404';
        return false;
    }

    // list all blog thuộc tỉnh và miền
    public function province($region_slug,$slug){
        $province = $this->province_model->find_where(array('slug' => $slug),$this->data['lang']);
        if(!empty($province)){
            $region = $this->region_model->find_where(array('slug' => $region_slug,'id' => $province['region_id']),$this->data['lang']);
            if(!empty($region)){
                $blog = $this->blog_model->get_by_where(array('province_id' => $province['id'],'region_id' => $region['id']));
                $this->data['blog'] = $blog;//tất cả bài viết thuộc miền và tỉnh
                $this->data['region'] = $region;//miền của tất cả bài viết
                $this->data['province'] = $province;//tỉnh của tất cả bài viết
                echo "<pre>";
                print_r($blog);
                echo "<pre>";die;


                echo 'Trang danh sách blog của provice';
                return false;

                    
                return $this->render('detail_blog_view');
            }
        }
        //return view 404
        echo 'Lỗi 404';
        return false;
    }

    //hungluong commented
//    public function detail($region_slug, $province_slug,$slug){
//        $blog = $this->blog_model->find_where(array('slug' => $slug));
//        if(!empty($blog)){
//            $province = $this->province_model->find_where(array('slug' => $province_slug, 'id' => $blog['province_id']));
//            if(!empty($province)){
//                $region = $this->region_model->find_where(array('slug' => $region_slug, 'id' => $province['region_id']));
//                if(!empty($region)){
//                    $this->data['blog'] = $blog;//chi tiết bài viết
//                    $this->data['region'] = $region;//miền của tất cả bài viết
//                    $this->data['province'] = $province;//tỉnh của tất cả bài viết
//                    // bài viết liên quan
//                    $this->data['get_related'] = $this->blog_model->get_by_related($blog['region_id'],$blog['province_id'],$blog['id']);
//                    echo "<pre>";
//                    print_r($blog);
//                    echo "<pre>";
//                    echo 'Trang chi tiết blog';
//                    return false;
//
//                    return $this->render('detail_blog_view');
//                }
//            }
//        }
//        echo 'Lỗi 404';
//        return false;
//    }
}
