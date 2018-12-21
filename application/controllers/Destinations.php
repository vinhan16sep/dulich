<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Destinations extends Public_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('destination_model');
        $this->load->model('region_model');
        $this->load->model('province_model');
    }

    // ví dụ url đối với DB hiện tại : http://localhost/dulich/diem-den
    public function index(){
        echo  'Chưa biết để làm gì';
        return false;
        $this->render('list_destinations_view');
    }

    // ví dụ url đối với DB hiện tại : http://localhost/dulich/diem-den/mien-trung/thanh-hoa/nghe-an-3
    public function detail($region_slug, $province_slug,$slug){
        $destination = $this->destination_model->get_by_where(array('slug' => $slug));
        if(!empty($destination)){
            $province = $this->province_model->get_by_where(array('slug' => $province_slug, 'id' => $destination[0]['province_id']));
            if(!empty($province)){
                $region = $this->region_model->get_by_where(array('slug' => $region_slug, 'id' => $province[0]['region_id']));
                if(!empty($region)){
                    $destination = $this->destination_model->get_by_where(array('province_id' => $province[0]['id'],'region_id' => $region[0]['id']));
                    // get all destination thuộc thành phố
                    if(!empty($region)){
                        $province = $this->province_model->get_by_where(array('region_id' => $region[0]['id']));
                        foreach ($province as $key => $value) {
                            $province[$key]['destination'] = $this->destination_model->get_by_where(array('province_id' => $value['id']));
                        }
                    }
                    $this->data['region'] = $region;
                    $this->data['province'] = $province;
                    $this->data['destination'] = $destination;


                    echo 'Trang chi tiết destination';
                    return false;


                    return $this->render('detail_destination_view');
                }
            }
        }
        echo 'Lỗi 404';
        return false;
    }

    // list all destination của region
    // ví dụ url đối với DB hiện tại : http://localhost/dulich/diem-den/mien-trung
    public function category($slug){
        $region = $this->region_model->get_by_where(array('slug' => $slug));
        if(!empty($region)){
            $destination = array();

            // get all destination thuộc miền
            $province = $this->province_model->get_by_where(array('region_id' => $region[0]['id']));
            foreach ($province as $key => $value) {
                $province[$key]['destination'] = $this->destination_model->get_by_where(array('province_id' => $value['id']));
            }
            $this->data['region'] = $region;
            $this->data['province'] = $province;
            $this->data['destination'] = $destination;


            echo 'Trang danh sách destination của region';
            return false;

                    
            return $this->render('list_destinations_view');
        }
        //return view 404
        echo 'Lỗi 404';
        return false;
    }

    // list all destination của province
    // ví dụ url đối với DB hiện tại : http://localhost/dulich/diem-den/mien-trung/thanh-hoa
    public function province($region_slug,$slug){
        $province = $this->province_model->get_by_where(array('slug' => $slug));
        if(!empty($province)){
            $region = $this->region_model->get_by_where(array('slug' => $region_slug,'id' => $province[0]['region_id']));
            if(!empty($region)){
                $destination = $this->destination_model->get_by_where(array('province_id' => $province[0]['id'],'region_id' => $region[0]['id']));
                // get all destination thuộc thành phố
                if(!empty($region)){
                    $province = $this->province_model->get_by_where(array('region_id' => $region[0]['id']));
                    foreach ($province as $key => $value) {
                        $province[$key]['destination'] = $this->destination_model->get_by_where(array('province_id' => $value['id']));
                    }
                }
                $this->data['region'] = $region;
                $this->data['province'] = $province;


                echo 'Trang danh sách destination của provice';
                return false;

                    
                return $this->render('detail_destination_view');
            }
        }
        //return view 404
        echo 'Lỗi 404';
        return false;
    }
}
