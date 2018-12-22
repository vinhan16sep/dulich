<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Destination_model extends MY_Model {

    public $table = 'destination';
    function __construct(){
		parent::__construct();
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
}
