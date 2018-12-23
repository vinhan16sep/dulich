<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Events_model extends MY_Model {

    public $table = 'events';
    function __construct(){
		parent::__construct();
	}
    public function get_by_region_events($region_id,$start = '',$limit = '',$check = false){
        $this->db->select($this->table.'.*, province.title_vi as province_title_vi, province.title_en as province_title_en, province.slug as province_slug');
        $this->db->from($this->table);
        $this->db->join('province', $this->table .'.province_id = province.id');
        $this->db->where($this->table.'.is_deleted', 0);
        $this->db->where($this->table.'.is_active', 1);
        $this->db->where($this->table.'.region_id', $region_id);
        if($limit != '' && $start != ''){
            $this->db->limit($limit, $start);
        }
        if($limit == '' && $start == '' && $check == false){
            $this->db->limit(8, 0);
        }
        $this->db->order_by($this->table.".id", "desc");
        return $this->db->get()->result_array();
    }
    public function get_by_related($region_id, $province_id, $not_id = '', $number = 3){
        $this->db->select($this->table.'.*, province.title_vi as province_title_vi, province.title_en as province_title_en');
        $this->db->join('province', $this->table .'.province_id = province.id');
        $this->db->where(array($this->table.'.is_deleted' => 0,$this->table.'.is_active' => 1, $this->table.'.region_id' => $region_id, $this->table.'.province_id' => $province_id));
        if(!empty($not_id)){
        	$this->db->where($this->table.".id != $not_id");
        }
        $this->db->limit($number, 0);
        $this->db->order_by($this->table.".id", "desc");
        return $this->db->get($this->table)->result_array();
    }
    // public function get_by_slug_region($region_id){
    //     $this->db->select($this->table.'.*, province.title_vi as province_title_vi, province.title_en as province_title_en');
    //     $this->db->from($this->table);
    //     $this->db->join('province', $this->table .'.province_id = province.id');
    //     $this->db->where($this->table.'.is_deleted', 0);
    //     $this->db->where($this->table.'.is_active', 1);
    //     $this->db->where($this->table.'.region_id', $region_id);
    //     $this->db->order_by($this->table.".id", "desc");
    //     return $this->db->get()->result_array();
    // }
}
