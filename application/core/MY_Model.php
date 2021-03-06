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
        
        $this->db->where('is_deleted', 0);
        if ($this->ion_auth->in_group('mod')) {
            $this->db->where('created_by', $username);
        }
        $this->db->like('title_vi', $keyword);
        return $result = $this->db->get()->num_rows();
    }

    public function get_all_with_pagination_search($limit = NULL, $start = NULL, $keywords = null) {
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
        $this->db->where('is_deleted', 0);
        if ($this->ion_auth->in_group('mod')) {
            $this->db->where('created_by', $username);
        }
        if ( !empty($keywords) ){
            $this->db->like('title_vi', $keywords)->or_like('title_en', $keywords);
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

    public function get_all_order_by($is_active = null, $order = null, $by = null, $lang = ''){
        if(!empty($lang)){
            if(in_array($this->table, array('destination','events','blog'))){
                $this->db->select('*, title_'.$lang.' as title, description_'.$lang.' as description, body_'.$lang.' as body');
            }else{
                $this->db->select('*, title_'.$lang.' as title, description_'.$lang.' as description');
            }
        }else{
            $this->db->select('*');
        }
        $this->db->from($this->table);
        $this->db->where('is_deleted', 0);
        if($is_active != null){
            $this->db->where('is_active',$is_active);
        }
        if ($order != null && $by != null) {
            $this->db->order_by($order, $by);
        }else{
            $this->db->order_by("id", "desc");
        }
        return $this->db->get()->result_array();
    }

    public function get_by_region_all($region_id){
        $this->db->select($this->table.'.*, province.title_vi as province_title_vi, province.title_en as province_title_en, province.slug as province_slug');
        $this->db->from($this->table);
        $this->db->join('province', $this->table .'.province_id = province.id');
        $this->db->where($this->table.'.is_deleted', 0);
        $this->db->where($this->table.'.is_active', 1);
        $this->db->where($this->table.'.region_id', $region_id);
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
    public function get_by_field_is_active($field, $id){
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('is_deleted', 0);
        $this->db->where($field, $id);
        $this->db->where('is_active',1);
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

    public function count_is_top($is_top, $id_category = '', $region_id = ''){
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('is_top', $is_top);
        $this->db->where('is_deleted', 0);
        if(!empty($id_category) && !empty($id_category)){
            $this->db->where($this->table.'_category_id', $id_category);
            $this->db->where('region_id', $region_id);
        }
        return $this->db->count_all_results();
    }
    public function count_is_pinned($is_pinned, $province_id = '', $region_id = '', $id = ''){
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('is_pinned', $is_pinned);
        $this->db->where('is_deleted', 0);
        if(!empty($province_id) && !empty($region_id)){
            $this->db->where('province_id', $province_id);
            $this->db->where('region_id', $region_id);
        }
        if(!empty($id)){
            $this->db->where('id', $id);
        }
        return $result = $this->db->get()->result_array();
        // return $this->db->count_all_results();
        
    }


    //Frontend
    public function get_by_where($where = array(),$lang = '', $order_by = array()){
        if(!empty($lang)){
            if(in_array($this->table, array('destination','events','blog'))){
                $this->db->select('*, title_'.$lang.' as title, description_'.$lang.' as description, body_'.$lang.' as body');
            }else{
                $this->db->select('*, title_'.$lang.' as title, description_'.$lang.' as description');
            }
        }else{
            $this->db->select('*');
        }
        $this->db->from($this->table);
        $this->db->where('is_deleted',0);
        $this->db->where('is_active',1);
        if ($where) {
            $this->db->where($where);
        }
        if(!empty($order_by)){
            $this->db->order_by($order_by[0], $order_by[1]);
        }else{
            $this->db->order_by("updated_at", "desc");
        }
        
        return $this->db->get()->result_array();
    }

    //Frontend
    public function find_where($where = array(),$lang=''){
        if(!empty($lang)){
            if(in_array($this->table, array('destination','events','blog', 'cuisine'))){
                $this->db->select('*, title_'.$lang.' as title, description_'.$lang.' as description, body_'.$lang.' as body, metadescription_'.$lang.' as metadescription, metakeywords_'.$lang.' as metakeywords');
            }else{
                $this->db->select('*, title_'.$lang.' as title, description_'.$lang.' as description, metadescription_'.$lang.' as metadescription, metakeywords_'.$lang.' as metakeywords');
            }
        }else{
            $this->db->select('*');
        }
        $this->db->from($this->table);
        $this->db->where('is_deleted',0);
        $this->db->where('is_active',1);
        if ($where) {
            $this->db->where($where);
        }
        $this->db->order_by("updated_at", "desc");
        return $this->db->get()->row_array();
    }

    public function get_by_where_with_limit($limit, $start, $where = array(),$lang){
        if(!empty($lang)){
            if(in_array($this->table, array('destination','events','blog'))){
                $this->db->select('*, title_'.$lang.' as title, description_'.$lang.' as description, body_'.$lang.' as body');
            }else{
                $this->db->select('*, title_'.$lang.' as title, description_'.$lang.' as description');
            }
        }else{
            $this->db->select('*');
        }        $this->db->from($this->table);
        $this->db->where('is_deleted',0);
        $this->db->where('is_active',1);
        if ($where) {
            $this->db->where($where);
        }
        if($this->table == 'destination'){
            $this->db->order_by("is_pinned", "desc");
        }
        else if($this->table == 'province'){
            $this->db->order_by("sort", "asc");
        }else{
            $this->db->order_by("updated_at", "desc");
        }
        return $this->db->get()->result_array();
    }

    public function get_where_by_limit($limit, $start, $where = array(),$lang){
        if(!empty($lang)){
            if(in_array($this->table, array('destination','events','blog'))){
                $this->db->select('*, title_'.$lang.' as title, description_'.$lang.' as description, body_'.$lang.' as body');
            }else{
                $this->db->select('*, title_'.$lang.' as title, description_'.$lang.' as description');
            }
        }else{
            $this->db->select('*');
        }
        $this->db->from($this->table);
        $this->db->where('is_deleted',0);
        $this->db->where('is_active',1);
        if ($where) {
            $this->db->where($where);
        }
        $this->db->limit($limit, $start);
        $this->db->order_by("updated_at", "desc");
        return $this->db->get()->result_array();
    }
    

    public function get_multiple_id_where($multiple_id = array(),$where = array()){
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where_in('province_id', $multiple_id);
        $this->db->where('is_deleted',0);
        $this->db->where('is_active',1);
        if ($where) {
            $this->db->where($where);
        }
        $this->db->order_by("updated_at", "desc");
        return $this->db->get()->result_array();
    }

    public function get_search($table = '',$search = '',$lang=''){
        if(!empty($lang)){
            $this->db->select($table.'.*, '.$table.'.title_'.$lang.' as title, '.$table.'.description_'.$lang.' as description, body_'.$lang.' as body, province.title_'.$lang.' as province_title , province.slug as province_slug, region.title_'.$lang.' as region_title , region.slug as region_slug,');
        }else{
            $this->db->select('*');
        }
        $this->db->from($table);
        $this->db->join('province', $table .'.province_id = province.id');
        $this->db->join('region', $table .'.region_id = region.id');
        $this->db->where($table.'.is_deleted',0);
        $this->db->where($table.'.is_active',1);
        $this->db->like($table.'.title_'.$lang, $search);
        $this->db->order_by($table.".updated_at", "desc");
        return $this->db->get()->result_array();
    }
}