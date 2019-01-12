<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require 'class.phpmailer.php';
require 'class.smtp.php';

class Contact extends Public_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->helper('email');
        $this->load->library('session');
        $this->data['lang'] = $this->session->userdata('langAbbreviation');
        $this->data['lang'] ='en';
        $this->load->model('config_contact_model');
        $this->data['controller'] = $this->config_contact_model->table;

    }

    public function index(){
        $this->load->helper('form');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('contact_name', 'Fullname', 'required');
        $this->form_validation->set_rules('contact_mail', 'Email', 'required');
        $this->form_validation->set_rules('contact_subject', 'Subject', 'required');
        $this->form_validation->set_rules('contact_message', 'Message', 'required');

        if ($this->form_validation->run() == true) {
            if($this->input->post()){
                $data = array();
                $data['name'] = $this->input->post('contact_name');
                $data['email'] = $this->input->post('contact_mail');
                $data['subject'] = $this->input->post('contact_subject');
                $data['message'] = $this->input->post('contact_message');
            }
            // $this->order_model->common_insert($data);
            $send = $this->send_mail($data);

            if($send == false){
                $this->output->set_status_header(404)
                    ->set_output(json_encode(array('message' => 'Fail', 'data' => $data)));
            }else{
                redirect('contact');
            }
        }else{
            $this->render('contact_view');
        }

    }


    public function send_mail($data) {
        $mail = new PHPMailer();
        $mail->IsSMTP(); // set mailer to use SMTP
        $mail->Host = "smtp.gmail.com"; // specify main and backup server
        $mail->Port = 465; // set the port to use
        $mail->SMTPAuth = true; // turn on SMTP authentication
        $mail->SMTPSecure = 'ssl';
        $mail->Username = "nghemalao@gmail.com"; // your SMTP username or your gmail username
        $mail->Password = "ghozqjiyuhyaocmx"; // your SMTP password or your gmail password
        $from = "nghemalao@gmail.com"; // Reply to this email
        $to = "minhtruong93gtvt@gmail.com"; // Recipients email ID
        $name = 'WEBMAIL'; // Recipient's name
        $mail->From = $from;
        $mail->FromName = $name; // Name to indicate where the email came from when the recepient received
        $mail->AddAddress($to, $name);
        $mail->CharSet = 'UTF-8';
        $mail->WordWrap = 50; // set word wrap
        $mail->IsHTML(true); // send as HTML
        $mail->Subject = "Mail từ " . strip_tags($data['name']);

        $mail->Body = $this->email_template($data); //HTML Body

        $mail->SMTPDebug = 2;

        if(!$mail->Send()){
            return false;
        } else {
            return true;
        }
    }

    public function email_template($data){
        $message = '<html><body>';
        $message .= '<p>Chào Admin, bạn có 1 liện hệ mới từ người dùng trên website</p>';
        $message .= '<p>Thông tin như sau:</p>';
        $message .= '<p>Họ tên: ' . $data['name'] . '</p>';
        $message .= '<p>Email: ' . $data['email'] . '</p>';
        $message .= '<p>Địa chỉ: ' . $data['subject'] . '</p>';
        $message .= '<p>Lời nhắn: ' . $data['message'] . '</p>';
        $message .= "</body></html>";

        return $message;
    }

    public function send(){
    	if($this->input->post()){
	    	if($this->config_contact_model->find_rows(array('is_deleted' => 0, 'is_activated' => 1)) != 0){
		        $this->data['detail'] = $this->config_contact_model->get_by_activated_contact();
		        $body_mail = json_decode($this->data['detail']['config_send_mail'],true)['body'][$this->data['lang']];
		        $description_mail = json_decode($this->data['detail']['config_send_mail'],true)['description_email'][$this->data['lang']];
		        $cc_mail = explode(',',json_decode($this->data['detail']['config_send_mail'],true)['cc_email']);
		        $to_mail = json_decode($this->data['detail']['config_send_mail'],true)['to_email'];
		        foreach ($this->input->post() as $key => $value) {
		        	if(is_array($value)){
		        		$body_mail = str_replace('{'. $key .'}', implode(', ', $value), $body_mail);
		        	}else{
		        		$body_mail = str_replace('{'. $key .'}', $value, $body_mail);
		        	}
		        }
		        $send_mail = send_mail("nghemalao@gmail.com","Huongdan1","minhtruong93gtvt@gmail.com",$to_mail,$to_mail,$description_mail,$body_mail,$cc_mail);
	            $reponse = array(
	                'csrf_hash' => $this->security->get_csrf_hash()
	            );
		        if($send_mail == 'Success'){
		        	return $this->return_api(HTTP_SUCCESS,'Thành công',$reponse);
		        }else{
		        	return $this->return_api(HTTP_SUCCESS,'Thất bại',$reponse);
		        }
		        
		    }
		}
    }
    public function form(){

	    if($this->config_contact_model->find_rows(array('is_deleted' => 0, 'is_activated' => 1)) != 0){
	        $this->load->helper('form');
	        $this->load->library('form_validation');
	        $this->data['detail'] = $this->config_contact_model->get_by_activated_contact();
	        $this->data['form'] = $this->build_form_contact($this->data['detail']);

        	$this->render('form_contact_view');
	    }else{
	        $this->session->set_flashdata('message_error',MESSAGE_ISSET_ERROR);
	        redirect('/', 'refresh');
	    }
    }
    function build_form_contact($detail){
    	$html = '';
        foreach (json_decode($detail['data'],true) as $key => $value) {
            $required = isset($value['required'][$this->data['lang']]) ? 'required' : '';
            $content_red = isset($value['required'][$this->data['lang']]) ? '<div class="row invalid-feedback">' . $value['required'][$this->data['lang']] . '</div>' : '';
            $description = $value['description'][$this->data['lang']] ? ' (<i>' .  $value['description'][$this->data['lang']] . '</i>)' : '';
            switch ($value['type']) {
                case 'textarea':
                    $html.= "
                        <div class='form-row row col-xs-12 $required' id='parent_$key'>
                            <label for='".$value['type']."'>".$value['title'][$this->data['lang']]."</label>
                            <textarea name='$key' value='' class='form-control col-xs-12' rows='5' placeholder='".$value['description'][$this->data['lang']]."'></textarea>
                            $content_red
                        </div>

                    ";
                    break;
                
                case 'radio':
                    $radio = '';
                    foreach ($value['choice'][$this->data['lang']] as $k => $val) {
                        $checked = ($k == 0) ? 'checked' : '';
                        $radio .= "
                            <div class='form-check' style='margin-right:15px;'>
                                <input type='radio' class='form-check-input' id='$key$k'name='$key' value='$val'>
                                <label for='$key$k' class='form-check-label'>
                                    $val
                                </label>
                            </div>
                        ";
                    }
                    $html.= "
                        <div class='form-row row col-xs-12 $required ' id='parent_$key'>
                            <label for='".$value['type']."'>".$value['title'][$this->data['lang']]."</label>
                                    $description
                            <div class='form-group'>
                                $radio
                            </div>
                            $content_red
                        </div>
                    ";
                    break;
                
                case 'checkbox':
                    $checkbox = '';
                    foreach ($value['choice'][$this->data['lang']] as $k => $val) {
                        $checkbox .= "
                            <div class='form-check' style='margin-right:15px;'>
                                <input type='checkbox' class='form-check-input' id='$key$k'name='$key".'[]'."' value='$val'>
                                <label for='$key$k' class='form-check-label'>
                                    $val
                                </label>
                            </div>
                        ";
                    }
                    $html.= "
                        <div class='form-row row col-xs-12 $required' id='parent_$key'>
                            <label for='".$value['type']."'>".$value['title'][$this->data['lang']]."</label>
                                    $description
                            <div class='form-group'>
                                $checkbox
                            </div>
                            $content_red
                        </div>
                    ";
                    break;
                
                case 'select':
                    $select = '';
                    foreach ($value['choice'][$this->data['lang']] as $k => $val) {
                        $select .= "<option value='$val'>$val</option>";
                    }
                    $html.= "
                        <div class='form-row row col-xs-12 $required' id='parent_$key'>
                            <label for='".$value['type']."'>".$value['title'][$this->data['lang']]."</label>
                                    $description
                            <select name='$key' class='form-control' 
                                ".(isset($value['select_multiple']) ? 'multiple' : '').">
                                        $select
                            </select>
                            $content_red
                        </div>
                    ";
                    break;
                
                case 'date':
                    $html.= "
                        <div class='form-row row col-xs-12 $required' id='parent_$key'>
                            <label for='".$value['type']."'>".$value['title'][$this->data['lang']]."</label>
                            <div class='input-group'>
                                <div class='input-group-prepend'>
                                    <div class='input-group-text'>
                                        <i class='fa fa-calendar'></i>
                                    </div>
                                </div>
                                <input class='form-control' name='$key' placeholder='".$value['description'][$this->data['lang']] ."' id='realDPX-min' type='text'>
                            $content_red
                            </div>
                        </div>
                    ";
                    break;
                
                default:
                    $html.= "
                        <div class='form-row row col-xs-12 $required' id='parent_$key'>
                            <label for='".$value['type']."'>".$value['title'][$this->data['lang']]."</label>
                            <input type='".$value['type']."' name='$key' class='form-control' placeholder='".$value['description'][$this->data['lang']] ."'/>
                            $content_red
                        </div>
                    ";
                    break;
            }
        }
        return $html;
    }
}
