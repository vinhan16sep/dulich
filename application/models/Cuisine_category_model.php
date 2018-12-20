<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Cuisine_category_model extends MY_Model {

    public $table = 'cuisine_category';
    function __construct(){
		parent::__construct();
	}
    public function get_by_region_all($region_id){
        $this->db->select($this->table.'.*');
        $this->db->from($this->table);
        $this->db->where($this->table.'.is_deleted', 0);
        $this->db->where($this->table.'.is_active', 1);
        $this->db->where($this->table.'.region_id', $region_id);
        $this->db->order_by($this->table.".id", "desc");
        return $this->db->get()->result_array();
    }
}
