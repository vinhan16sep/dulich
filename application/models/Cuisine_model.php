<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Cuisine_model extends MY_Model {

    public $table = 'cuisine';
	function __construct(){
		parent::__construct();
	}
    public function get_by_related($region_id, $cuisine_category_id = '', $not_id = '', $number = 3){
        $this->db->select($this->table.'.*, cuisine_category.title_vi as cuisine_category_title_vi, cuisine_category.title_en as cuisine_category_title_en');
        $this->db->join('cuisine_category', $this->table .'.cuisine_category_id = cuisine_category.id');
        $this->db->where(array($this->table.'.is_deleted' => 0,$this->table.'.is_active' => 1, $this->table.'.region_id' => $region_id));
        if(!empty($not_id)){
        	$this->db->where($this->table.".id != $not_id");
        }
        if(!empty($cuisine_category_id)){
        	$this->db->where($this->table.".cuisine_category_id != $cuisine_category_id");
        }
        $this->db->limit($number, 0);
        $this->db->order_by($this->table.".id", "desc");
        return $this->db->get($this->table)->result_array();
    }
    public function get_by_where($lang = '',$where = array(), $limit = 4, $not_id = ''){
        if(!empty($lang)){
            $this->db->select('*, title_'.$lang.' as title, description_'.$lang.' as description');
        }else{
            $this->db->select('*');
        }
        $this->db->from($this->table);
        $this->db->where('is_deleted',0);
        $this->db->where('is_active',1);
        if ($where) {
            $this->db->where($where);
        }
        if(!empty($not_id)){
            $this->db->where($this->table.".id != $not_id");
        }
        $this->db->limit($limit, 0);
        $this->db->order_by("updated_at", "desc");
        return $this->db->get()->result_array();
    }
    public function get_search($table = '',$search = '',$lang=''){
        if(!empty($lang)){
            $this->db->select($table.'.*, '.$table.'.title_'.$lang.' as title, '.$table.'.description_'.$lang.' as description, region.title_'.$lang.' as title , region.slug as region_slug, cuisine_category.title_'.$lang.' as title , cuisine_category.slug as cuisine_category_slug,');
        }else{
            $this->db->select('*');
        }
        $this->db->from($table);
        $this->db->join('region', $table .'.region_id = region.id');
        $this->db->join('cuisine_category', $table .'.cuisine_category_id = cuisine_category.id');
        $this->db->where($table.'.is_deleted',0);
        $this->db->where($table.'.is_active',1);
        $this->db->like($table.'.title_'.$lang, $search);
        $this->db->order_by($table.".updated_at", "desc");
        return $this->db->get()->result_array();
    }
}
