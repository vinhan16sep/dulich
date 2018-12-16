<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Events extends Public_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function index(){
        $this->render('list_events_view');
    }

    public function detail(){
        $this->render('detail_event_view');
    }
}
