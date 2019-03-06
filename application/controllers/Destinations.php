<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Destinations extends Public_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('destination_model');
        $this->load->model('cuisine_model');
        $this->load->model('events_model');
        $this->load->model('region_model');
        $this->load->model('province_model');
        $this->data['lang'] = $this->session->userdata('langAbbreviation');
    }

    // ví dụ url đối với DB hiện tại : http://localhost/dulich/diem-den
    public function index(){
        $this->data['metakeywords'] = 'Destination';
        $this->data['metadescription'] = 'Destination';
        $region = $this->region_model->get_all_order_by(1, 'id', 'asc',$this->data['lang']);
        $this->data['region'] = $region;

        $region_first = reset($region);
        $region_detail = $this->region_model->find_where(array('slug' => $region_first['slug']),$this->data['lang']);
        $this->data['region_detail'] = $region_detail;
        $province = null;
        if (!empty($region)) {
            foreach ($region as $key => $value) {
                if ($key == 0) {
                    $province = $this->province_model->get_by_where_with_limit(8, 0, array('region_id' => $value['id']),$this->data['lang']);
                }
                
            }
        }
        if (!empty($province)) {
            foreach ($province as $key => $value) {
                $where = array('province_id' => $value['id']);
                $limit = 2;
                switch ($key + 1) {
                    case 1:
                        $limit = 4;
                        break;
                    case 4:
                        $limit = 4;
                        break;
                    case 5:
                        $limit = 4;
                        break;
                        $limit = 4;
                        break;
                    case 8:
                        $limit = 4;
                        break;
                    default:
                        $limit = 2;
                        break;
                }
                $destination = $this->destination_model->get_where_by_limit($limit, 0, $where,$this->data['lang']);
                $province[$key]['destination'] = $destination;
            }
        }
        $this->data['province'] = $province;
        $this->render('list_destinations_view');
    }

    public function detail(){
        $this->render('detail_destination_view');
    }

    // public function detailpost($region_slug, $province_slug, $slug){
    //     $region = $this->region_model->find_where(array('slug' => $region_slug),$this->data['lang']);
    //     $province = $this->province_model->find_where(array('slug' => $province_slug),$this->data['lang']);
    //     if (!empty($region) && !empty($province)) {
    //         $destination = $this->destination_model->find_where(array('slug' => $slug),$this->data['lang']);
    //         $this->data['destination'] = $destination;

    //         $get_related = $this->destination_model->get_where_by_limit(3, 0, array('province_id' => $province['id']),$this->data['lang']);
    //         $this->data['get_related'] = $get_related;
    //         $this->data['region'] = $region;
    //         $this->data['province'] = $province;

    //         $this->render('detail_destination_post_view');
    //     }
        
    // }

    public function detailpost($slug){
        $destination = $this->destination_model->find_where(array('slug' => $slug),$this->data['lang']);
        $this->data['metakeywords'] = $destination['metakeywords'];
        $this->data['metadescription'] = $destination['metadescription'];
        if(!empty($destination['id'])){
            $region = $this->region_model->find_where(array('id' => $destination['region_id']),$this->data['lang']);
            $province = $this->province_model->find_where(array('id' => $destination['province_id']),$this->data['lang']);
            if(!empty($region['id']) && !empty($province['id'])){
            $this->data['destination'] = $destination;
            $get_related = $this->destination_model->get_where_by_limit(3, 0, array('province_id' => $province['id']),$this->data['lang']);
            $this->data['get_related'] = $get_related;
            $this->data['region'] = $region;
            $this->data['province'] = $province;
            $this->render('detail_destination_post_view');
            }
        }
        
    }

    // ví dụ url đối với DB hiện tại : http://localhost/dulich/diem-den/mien-trung/thanh-hoa/nghe-an-3

    // hung.luong commented
//    public function detail($region_slug, $province_slug,$slug){
//        $destination = $this->destination_model->find_where(array('slug' => $slug));
//        if(!empty($destination)){
//            $province = $this->province_model->find_where(array('slug' => $province_slug, 'id' => $destination['province_id']));
//            if(!empty($province)){
//                $region = $this->region_model->find_where(array('slug' => $region_slug, 'id' => $province['region_id']));
//                if(!empty($region)){
//                    $this->data['region'] = $region;
//                    $this->data['province'] = $province;
//                    $this->data['destination'] = $destination;
//
//                    //destination liên quan đến tỉnh
//                    $this->data['get_related'] = $this->destination_model->get_by_related($destination['region_id'],$destination['province_id'],$destination['id']);
//
//                    // sự kiện liên quan đến tỉnh
//                    $this->data['get_related_evnets'] = $this->events_model->get_by_related($destination['region_id'],$destination['province_id']);
//
//                    // món ăn liên quanh đến miền
//                    $this->data['get_related_cuisine'] = $this->cuisine_model->get_by_related($destination['region_id']);
//
//                    echo "<pre>";
//                    print_r($this->data['destination']);
//                    echo "<pre>";
//
//                    echo 'Trang chi tiết destination';
//                    return false;
//
//
//                    return $this->render('detail_destination_view');
//                }
//            }
//        }
//        echo 'Lỗi 404';
//        return false;
//    }

    // list all destination của region
    // ví dụ url đối với DB hiện tại : http://localhost/dulich/diem-den/mien-trung
    public function region($slug){
        $region_detail = $this->region_model->find_where(array('slug' => $slug),$this->data['lang']);
        $this->data['metakeywords'] = $region_detail['metakeywords'];
        $this->data['metadescription'] = $region_detail['metadescription'];
        if(!empty($region_detail)){
            $region_all = $this->region_model->get_all_order_by(1, 'id', 'asc',$this->data['lang']);
            // get all destination thuộc miền
            $province = $this->province_model->get_by_where_with_limit(8, 0, array('region_id' => $region_detail['id']),$this->data['lang']);
            foreach ($province as $key => $value) {
                $where = array('province_id' => $value['id']);
                $limit = 2;
                switch ($key + 1) {
                    case 1:
                        $limit = 4;
                        break;
                    case 4:
                        $limit = 4;
                        break;
                    case 5:
                        $limit = 4;
                        break;
                        $limit = 4;
                        break;
                    case 8:
                        $limit = 4;
                        break;
                    default:
                        $limit = 2;
                        break;
                }
                $destination = $this->destination_model->get_where_by_limit($limit, 0, $where,$this->data['lang']);
                $province[$key]['destination'] = $destination;
            }
            $this->data['region'] = $region_all;
            $this->data['region_detail'] = $region_detail;
            $this->data['province'] = $province;//tất cả tỉnh thuộc miền và trong mỗi tỉnh sẽ có các destination
            return $this->render('list_destinations_view');
        }
        //return view 404
        echo 'Lỗi 404';
        return false;
    }

    // list all destination của province
    // ví dụ url đối với DB hiện tại : http://localhost/dulich/diem-den/mien-trung/thanh-hoa
    public function province($region_slug,$slug){
        $province = $this->province_model->find_where(array('slug' => $slug),$this->data['lang']);
        $this->data['metakeywords'] = $province['metakeywords'];
        $this->data['metadescription'] = $province['metadescription'];
        if(!empty($province)){
            $this->load->model('events_model');
            $this->load->model('cuisine_model');

            $region_all = $this->region_model->get_all_order_by(1, 'id', 'asc',$this->data['lang']);
            $region = $this->region_model->find_where(array('slug' => $region_slug,'id' => $province['region_id']),$this->data['lang']);
            $province_all = $this->province_model->get_by_where(array('region_id' => $region['id']),$this->data['lang']);

            if(!empty($region)){
                $destination = $this->destination_model->get_by_where_with_limit(4, 0, array('province_id' => $province['id'],'region_id' => $region['id']),$this->data['lang']);


                $this->data['destination'] = $destination;//tất cả destination thuộc miền và tỉnh
                $this->data['region'] = $region;//miền của tất cả sự kiện
                $this->data['region_all'] = $region_all;
                $this->data['province'] = $province;
                $this->data['province_all'] = $province_all;

                //post heading
                $destination_bottom = $this->destination_model->get_by_where_with_limit(6, 0, array('province_id' => $province['id'],'region_id' => $region['id']),$this->data['lang']);
                $this->data['destination_bottom'] = $destination_bottom;

                $events_bottom = $this->events_model->get_by_where_with_limit(6, 0, array('province_id' => $province['id'],'region_id' => $region['id']),$this->data['lang']);
                $this->data['events_bottom'] = $events_bottom;


                $cuisine_bottom = $this->cuisine_model->get_by_where_with_limit(100, 0, array('province_id' => $province['id']),$this->data['lang']);
                $this->data['cuisine_bottom'] = $cuisine_bottom;

                return $this->render('detail_destination_view');
            }
        }
        //return view 404
        echo 'Lỗi 404';
        return false;
    }
}
