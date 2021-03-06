<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Events extends Public_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('events_model');
        $this->load->model('region_model');
        $this->load->model('province_model');
        $this->load->helper('common_helper');
        $this->data['lang'] = $this->session->userdata('langAbbreviation');
    }

   // if(in_array($this->table, array('destination','events','blog'))){
    //     $this->db->select('*, title_'.$lang.' as title, description_'.$lang.' as description, body_'.$lang.' as body');
    // }else{
    //     $this->db->select('*, title_'.$lang.' as title, description_'.$lang.' as description');
    // }

    public function index($slug=''){
        $events = $this->events_model->find_where(array('slug' => $slug),$this->data['lang']);
        $this->data['metakeywords'] = $events['metakeywords'];
        $this->data['metadescription'] = $events['metadescription'];
        $this->data['title'] = $events['title'];
        if(!empty($events)){
            $province = $this->province_model->find_where(array('id' => $events['province_id']),$this->data['lang']);
            if(!empty($province)){
                $region = $this->region_model->find_where(array('id' => $province['region_id']),$this->data['lang']);
                if(!empty($region)){
                    $this->data['events'] = $events;//chi tiết sự kiện
                    $this->data['region'] = $region;//miền của sự kiện
                    $this->data['province'] = $province;//tỉnh của sự kiện
                    //sự kiện liên quan
                    $this->data['get_related'] = $this->events_model->get_by_related($events['region_id'],$events['province_id'],$events['id'],3,$this->data['lang']);

                    return $this->render('detail_event_view');
                }
            }
        }
        echo 'Lỗi 404';
        return false;
    }

    // list all events của region
    public function region($slug){
        $this->data['region_full'] = $this->region_model->get_all_order_by(1, 'id', 'asc',$this->data['lang']);
        $region = $this->region_model->find_where(array('slug' => $slug),$this->data['lang']);
        $this->data['metakeywords'] = $region['metakeywords'];
        $this->data['metadescription'] = $region['metadescription'];
        $this->data['title'] = $region['title'];
        if(!empty($region)){
            // dữ liệu miền cho events
            $this->data['region'] = $region;
            // trong list events trả về đã có tỉnh nên không cần dữ liệu tỉnh
            $this->data['events'] = $this->events_model->get_by_region_events($region['id'],'','',false,$this->data['lang']);
            return $this->render('list_events_view');
        }
        //return view 404
        echo 'Lỗi 404';
        return false;
    }

    // list all events thuộc tỉnh và miền
    public function province($region_slug,$slug){
        $province = $this->province_model->find_where(array('slug' => $slug),$this->data['lang']);
        if(!empty($province)){
            $region = $this->region_model->find_where(array('slug' => $region_slug,'id' => $province['region_id']),$this->data['lang']);
            if(!empty($region)){
                $events = $this->events_model->get_by_where(array('province_id' => $province['id'],'region_id' => $region['id']),$this->data['lang']);
                $this->data['events'] = $events;//tất cả sự kiện thuộc miền và tỉnh
                $this->data['region'] = $region;//miền của tất cả sự kiện
                $this->data['province'] = $province;//tỉnh của tất cả sự kiện
                echo "<pre>";
                print_r($events);
                echo "<pre>";die;


                echo 'Trang danh sách events của provice';
                return false;

                    
                return $this->render('detail_events_view');
            }
        }
        //return view 404
        echo 'Lỗi 404';
        return false;
    }

    // get ajax events
    public function ajax_event(){
        $slug = $this->input->get('slug');
        $region = $this->region_model->find_where(array('slug' => $slug),$this->data['lang']);
        $check = true;

        if(!empty($region)){
            $limit = $this->input->get('limit');
            $start = $this->input->get('start');
            // trong list events trả về đã có tỉnh nên không cần dữ liệu tỉnh
            $events = $this->events_model->get_by_region_events($region['id'], $limit, $start,false,$this->data['lang']);
            $result = '';
            foreach ($events as $key => $value){
                $events[$key]['date'] = (date_format(date_create($value['date_start']),"d M Y") == date_format(date_create($value['date_end']),"d M Y")) ? date_format(date_create($value['date_start']),"d M Y") : date_format(date_create($value['date_start']),"d M Y").' - '.date_format(date_create($value['date_end']),"d M Y");
            }
            $all_event= $this->events_model->get_by_region_events($region['id'], '', '',true,$this->data['lang']);;
            if(($start+$limit)>count($all_event)){
                $check = false;
            }
            $reponse = array(
                'region' => $region,
                'events' => $events,
                'check' => $check,
                'lang' => $this->data['lang'],
            );
            return $this->return_api(HTTP_SUCCESS,'',$reponse);
        }
        return $this->return_api(HTTP_BAD_REQUEST,'',array());
        
    }

    //hungluong commented
    // public function detail($region_slug, $province_slug,$slug){
    //     $events = $this->events_model->find_where(array('slug' => $slug),$this->data['lang']);
    //     $this->data['metakeywords'] = $events['metakeywords'];
    //     $this->data['metadescription'] = $events['metadescription'];
    //     if(!empty($events)){
    //         $province = $this->province_model->find_where(array('slug' => $province_slug, 'id' => $events['province_id']),$this->data['lang']);
    //         if(!empty($province)){
    //             $region = $this->region_model->find_where(array('slug' => $region_slug, 'id' => $province['region_id']),$this->data['lang']);
    //             if(!empty($region)){
    //                 $this->data['events'] = $events;//chi tiết sự kiện
    //                 $this->data['region'] = $region;//miền của sự kiện
    //                 $this->data['province'] = $province;//tỉnh của sự kiện
    //                 //sự kiện liên quan
    //                 $this->data['get_related'] = $this->events_model->get_by_related($events['region_id'],$events['province_id'],$events['id'],3,$this->data['lang']);

    //                 return $this->render('detail_event_view');
    //             }
    //         }
    //     }
    //     echo 'Lỗi 404';
    //     return false;
    // }
}
