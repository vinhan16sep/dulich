<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Model extends CI_Model {

    public $table = '';

    function __construct() {
        parent::__construct();
    }

    /**
     * @param $data
     * @return integer|bool
     */
    function insert($data) {
        $this->db->set($data)->insert($this->table);

        if ($this->db->affected_rows() == 1) {
            return $this->db->insert_id();
        }
        return false;
    }

    
    public function count_search($keyword = ''){
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->like('title_vi', $keyword);
        $this->db->where('is_deleted', 0);

        return $result = $this->db->get()->num_rows();
    }
    public function count_search_by_create_by($keyword = ''){
        $username = $this->ion_auth->user()->row()->username;
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->like('title_vi', $keyword);
        $this->db->where('is_deleted', 0);
        if ($this->ion_auth->in_group('mod')) {
            $this->db->where('created_by', $username);
        }

        return $result = $this->db->get()->num_rows();
    }

    public function get_all_with_pagination_search($limit = NULL, $start = NULL, $keywords) {
        $this->db->select('*');
        $this->db->from($this->table);
        if ( !empty($keywords) ){
            $this->db->like('title_vi', $keywords)->or_like('title_en', $keywords);
        }
        $this->db->where('is_deleted', 0);
        $this->db->limit($limit, $start);
        $this->db->order_by("id", "desc");

        return $result = $this->db->get()->result_array();
    }

    public function get_all_with_pagination_search_by_create_by($limit = NULL, $start = NULL, $keywords) {
        $username = $this->ion_auth->user()->row()->username;
        $this->db->select('*');
        $this->db->from($this->table);
        if ( !empty($keywords) ){
            $this->db->like('title_vi', $keywords)->or_like('title_en', $keywords);
        }
        $this->db->where('is_deleted', 0);
        if ($this->ion_auth->in_group('mod')) {
            $this->db->where('created_by', $username);
        }
        $this->db->limit($limit, $start);
        $this->db->order_by("id", "desc");

        return $result = $this->db->get()->result_array();
    }
    public function get_all_with_pagination_join_cayegory_search_by_create_by($limit = NULL, $start = NULL, $keywords) {
        $username = $this->ion_auth->user()->row()->username;
        $this->db->select($this->table .'.*, '. $this->table . '_category.title_vi as title');
        $this->db->from($this->table);
        $this->db->join($this->table . '_category', $this->table .'.cuisine_category_id = '. $this->table . '_category.' .'id');
        if ( !empty($keywords) ){
            $this->db->like($this->table .'.title_vi', $keywords)->or_like($this->table .'.title_en', $keywords);
        }
        $this->db->where($this->table .'.is_deleted', 0);
        if ($this->ion_auth->in_group('mod')) {
            $this->db->where($this->table .'.created_by', $username);
        }
        $this->db->limit($limit, $start);
        $this->db->order_by($this->table .".id", "desc");

        return $result = $this->db->get()->result_array();
    }

    public function get_all($is_active = null){
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('is_deleted', 0);
        if($is_active != null){
            $this->db->where('is_active',$is_active);
        }
        $this->db->order_by("id", "desc");
        return $this->db->get()->result_array();
    }
    public function get_by_region_all($reion_id){
        $this->db->select($this->table.'.*, province.title_vi as province_title_vi, province.title_en as province_title_en');
        $this->db->from($this->table);
        $this->db->join('province', $this->table .'.province_id = province.id');
        $this->db->where($this->table.'.is_deleted', 0);
        $this->db->where($this->table.'.is_active', 1);
        $this->db->order_by($this->table.".id", "desc");
        return $this->db->get()->result_array();
    }

    public function get_by_field($field, $id){
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('is_deleted', 0);
        $this->db->where($field, $id);
        $this->db->order_by('updated_at', 'desc');
        return $this->db->get()->result_array();
    }

    public function count_by_field($field, $id){
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('is_deleted', 0);
        $this->db->where($field, $id);
        return $this->db->get()->num_rows();
    }

    public function update($id, $data) {
        $this->db->where('id', $id);

        return $this->db->update($this->table, $data);
    }

    public function delete($id) {
        $this->db->where('id', $id);
        return $this->db->delete($this->table);
    }

    public function update_multiple($data) {
        return $this->db->update_batch($this->table, $data,'id');
    }

    public function multiple_update_by_ids($ids = array(), $data) {
        $this->db->where_in('id', $ids);

        return $this->db->update($this->table, $data);
    }

    public function count_active(){
        $query = $this->db->from($this->table)->where('is_activated', 1)->get();
        return $query->num_rows();
    }

    public function build_unique_slug($slug, $id = null){
        $count = 0;
        $temp_slug = $slug;
        while(true) {
            $this->db->select('id');
            $this->db->where('slug', $temp_slug);
            if($id != null){
                $this->db->where('id !=', $id);
            }
            $query = $this->db->get($this->table);
            if ($query->num_rows() == 0) break;
            $temp_slug = $slug . '-' . (++$count);
        }
        return $temp_slug;
    }

    public function find_rows($data=array()){
        $this->db->where($data);
        return $this->db->count_all_results($this->table);
    }
    public function find_results($id_templates){
        $this->db->select($this->table .'.id, '. $this->table .'.data, '. $this->table .'.slug, '.$this->table .'.*');
        $this->db->join($this->table, $this->table .'.'. $this->table .'_id = '. $this->table .'.id', 'left');
        $this->db->where($this->table.'.templates_id', $id_templates);
        return $this->db->get($this->table)->result_array();
    }
    public function find($id){
        $this->db->where(array('id' => $id,'is_deleted' => 0));
        return $this->db->get($this->table)->row_array();
    }
    public function find_slug($slug){
        $this->db->where(array('slug' => $slug,'is_deleted' => 0,'is_active' => 1));
        return $this->db->get($this->table)->row_array();
    }
    public function get_related($region_id, $not_id, $number = 3){
        $this->db->select($this->table.'.*, province.title_vi as province_title_vi, province.title_en as province_title_en');
        $this->db->join('province', $this->table .'.province_id = province.id');
        $this->db->where(array($this->table.'.is_deleted' => 0,$this->table.'.is_active' => 1, $this->table.'.region_id' => $region_id));
        $this->db->where($this->table.".id != $not_id");
        $this->db->limit($number, 0);
        $this->db->order_by($this->table.".id", "desc");
        return $this->db->get($this->table)->result_array();
    }
    public function get_where_array($array){
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('is_deleted',0);
        $this->db->where($array);
        return $result = $this->db->get()->result_array();
    }

    public function count_is_top($is_top, $id_category = ''){
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('is_top', $is_top);
        $this->db->where('is_deleted', 0);
        if(!empty($id_category)){
            $this->db->where($this->table.'_category_id', $id_category);
        }
        return $this->db->count_all_results();
    }
}