<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Users_model extends CI_Model {

    public $table = 'users';

    public function count_search($keywords = ''){
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->group_start();
        $this->db->like('username', $keywords)->or_like('email', $keywords)->or_like('last_name', $keywords);
        $this->db->group_end();
        $this->db->where('email !=', 'admin@admin.com');

        return $result = $this->db->get()->num_rows();
    }

    public function get_all_with_pagination_search($limit = NULL, $start = NULL, $keywords = null) {
        $this->db->select('*');
        $this->db->from($this->table);
        if ( !empty($keywords) ){
            $this->db->group_start();
            $this->db->like('username', $keywords)->or_like('email', $keywords)->or_like('last_name', $keywords);
            $this->db->group_end();
        }
        $this->db->where('email !=', 'admin@admin.com');
        $this->db->limit($limit, $start);
        $this->db->order_by("id", "desc");

        return $result = $this->db->get()->result_array();
    }

    public function update($id, $data) {
        $this->db->where('id', $id);

        return $this->db->update($this->table, $data);
    }

    public function delete($id){
        $this->db->where('id', $id);
        return $this->db->delete($this->table);
    }
}
