<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class About_model extends MY_Model {

    public $table = 'about';
    public function get_all_with_pagination_search_by_create_by_about($limit = NULL, $start = NULL, $keywords, $type) {
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
        $this->db->where('type', $type);
        $this->db->limit($limit, $start);
        $this->db->order_by("id", "desc");

        return $result = $this->db->get()->result_array();
    }

//fronend
    public function get_by_region_about($start = '',$limit = '',$type,$lang = ''){
        if(!empty($lang)){
            $this->db->select($this->table.'.*, '.$this->table.'.title_'.$lang.' as title, '.$this->table.'.description_'.$lang.' as description');
        }else{
            $this->db->select($this->table.'.*');
        }
        $this->db->from($this->table);
        $this->db->where($this->table.'.is_deleted', 0);
        $this->db->where($this->table.'.is_active', 1);
        $this->db->where($this->table.'.type', $type);
        if($limit != '' && $start != ''){
            $this->db->limit($limit, $start);
        }
        $this->db->order_by($this->table.".id", "desc");
        return $this->db->get()->result_array();
    }
}
