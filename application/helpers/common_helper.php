<?php

if (!function_exists('handle_multi_language_request')) {
    /**
     * @param $foreign_key - name of foreign key column
     * @param $id - id of inserted item
     * @param $request_language_template - columns of language table, except foreign key and language column
     * @param $request - form request
     * @param $languages - array of languages use on project
     * @return array
     */
    function handle_multi_language_request($foreign_key, $id, $request_language_template, $request, $languages, $data_lang =array()) {
        $list_request = array_keys($request);
        $converted_request = array();
        for ($i = 0; $i < count($languages); $i++) {
            $converted_request[$i] = array($foreign_key => $id, 'language' => $languages[$i]);
            if(!empty($data_lang)){
                $data = (empty($data_lang[$languages[$i]]) ? '{}' : json_encode($data_lang[$languages[$i]]));
                $converted_request[$i] = array_merge($converted_request[$i],array('data_lang' => $data));
            }
            for ($j = 0; $j < count($list_request); $j++) {
                $language_type = explode('_', $list_request[$j]);
                if (count($language_type) == 2) {
                    if (in_array($language_type[0], $request_language_template)) {
                        if ($language_type[1] == $languages[$i]) {
                            $converted_request[$i][$language_type[0]] = $request[$list_request[$j]];
                        }
                    }
                }
            }
        }
        return $converted_request;
    }

}

if (!function_exists('handle_common_author_data')) {
    /**
     * @return array
     */
    function handle_author_common_data() {
        $CI =& get_instance();
        $CI->load->library('ion_auth');

        date_default_timezone_set('Asia/Ho_Chi_Minh');

        return array(
            'created_at' => date('Y-m-d H:i:s', now()),
            'created_by' => $CI->ion_auth->user()->row()->username,
            'updated_at' => date('Y-m-d H:i:s', now()),
            'updated_by' => $CI->ion_auth->user()->row()->username
        );
    }
}

// phan quyen
if (!function_exists('handle_common_permission')) {
    /**
     * @return array
     */
    function handle_common_permission($permission) {
        $CI =& get_instance();
        if ( !$CI->ion_auth->in_group($permission) ){
            $CI->session->set_flashdata('message_error', 'Tài khoản không có quyền truy cập');
            redirect('admin/dashboard', 'refresh');
        }
    }
}

// phan quyen ajax
if (!function_exists('handle_common_permission_ajax')) {
    /**
     * @return array
     */
    function handle_common_permission_ajax($permission) {
        $CI =& get_instance();
        if ( !$CI->ion_auth->in_group($permission) ){
            $CI->session->set_flashdata('message_error', 'Tài khoản không có quyền truy cập');
            return $this->output
                ->set_content_type('application/json')
                ->set_status_header(HTTP_SUCCESS)
                ->set_output(json_encode(array('status' => HTTP_SUCCESS,'message' => 'Tài khoản không có quyền truy cập' , 'reponse' => array('error_permission' => 'error'), 'isExisted' => $isExisted)));
        }
    }
}
if (!function_exists('handle_common_permission_active_and_remove')) {
    /**
     * @return array
     */
    function handle_common_permission_active_and_remove() {
        $CI =& get_instance();
        if ( !$CI->ion_auth->in_group(array('admin', 'manager')) ){
            return false;
        }
        return true;
    }
}

if (!function_exists('handle_multi_language_requests')) {
    /**
     * @return array
     */
    function handle_multi_language_requests($request, $languages, $templates) {
        $data = array();
        $data_lang = array('vi' => [], 'en' => []);
        foreach ($templates as $key => $value) {
            if($value['type'] != 'file'){
                if($value['check_language'] == 'true'){
                    $data[$key] = $request[$key];
                }else{
                    foreach ($languages as $k => $val) {
                        $data_lang[$val][$key] = $request[$key.'_'.$val];
                    }
                }
            }
        }
        return array('data' => $data, 'data_lang' => $data_lang);
    }
}


//build array for dropdown form template
if (!function_exists('handle_common_author_data')) {
    function build_array_for_dropdown($data = array(), $category_name = 'Danh mục gốc', $id = null ){
        $new_data = array(0 => $category_name);
        foreach ($data as $key => $value) {
            $new_data[$value['id']] = $value['title'];

        }
        unset($new_data[$id]);
        return $new_data;
    }

    function build_array_by_slug_for_dropdown($data = array()){
        $new_data = array('' => 'Click để chọn');
        foreach ($data as $key => $value) {
            if($value['is_activated'] == 0){
                $new_data[$value['slug']] = $value['title'];
            }else{
                $new_data[$value['slug']] = $value['title'].MESSAGE_ERROR_TURN_ON_POST_PERSENT;
            }

        }
        return $new_data;
    }

    function build_array_by_id_for_dropdown($data = array()){
        $new_data = array('' => 'Click để chọn');
        foreach ($data as $key => $value) {
            $new_data[$value['id']] = $value['title_vi'];

        }
        return $new_data;
    }

    function get_slug($data = array()){
        foreach ($data as $key => $value) {
            $new_data[$value['id']] = $value['slug'];

        }
        return $new_data;
    }
}

//build title for input
if (!function_exists('handle_common_build_template')) {
    function build_template(){
        $template = array(
            'vi' => array(
                'title' => 'Tiêu đề',
                'description' => 'Giới Thiệu',
                'content' => 'Nội Dung',
                'metakeywords' => 'Từ khóa Meta',
                'metadescription' => 'Mô tả Meta'
            ),
            'en' => array(
                'title' => 'Title',
                'description' => 'Description',
                'content' => 'Content',
                'metakeywords' => 'Meta keywords',
                'metadescription' => 'Meta description'
            ),
            // 'cn' => array(
            //     'title' => 'Title china',
            //     'description' => 'Description',
            //     'content' => 'Content',
            //     'metakeywords' => 'Meta keywords',
            //     'metadescription' => 'Meta description'
            // ),
        );
        return $template;
    }
}
/**

    TODO:
    - $select = array('title', 'content', ...);
    - $page_languages = array('vi', 'en', 'cn' ...);

 */

if (!function_exists('handle_common_author_data')) {
    function build_language($controller, $detail, $select = array(), $page_languages){
        foreach ($select as $key => $value) {
            $result = explode('|||', $detail[$controller .'_'. $value]);
            foreach (array_reverse($page_languages) as $k => $val) {
                // echo $val;die;
                $detail[$value. '_'. $val] = $result[$k];
            }
        }
        return $detail;
    }
}

