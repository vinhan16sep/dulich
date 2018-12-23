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
        $this->render('list_blogs_view');
    }

    public function detail(){
        $this->render('detail_blog_view');
    }

    // list all blog của region
    public function region($slug){
        $region = $this->region_model->find_where(array('slug' => $slug));
        if(!empty($region)){

            // dữ liệu miền cho blog
            $this->data['region'] = $region;

            // trong list blog đã có tỉnh nên không cần dữ liệu tỉnh
            $this->data['blog'] = $this->blog_model->get_by_region_all($region['id']);
            echo '<pre>';
            print_r($this->data['blog']);
            echo '</pre>';

            echo 'Trang danh sách blog của region';
            return false;

                    
            return $this->render('list_blog_view');
        }
        //return view 404
        echo 'Lỗi 404';
        return false;
    }

    // list all blog thuộc tỉnh và miền
    public function province($region_slug,$slug){
        $province = $this->province_model->find_where(array('slug' => $slug));
        if(!empty($province)){
            $region = $this->region_model->find_where(array('slug' => $region_slug,'id' => $province['region_id']));
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
