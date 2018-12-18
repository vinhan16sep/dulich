<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Destinations extends Public_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function index(){
        $this->render('list_destinations_view');
    }

    public function detail(){
        $this->render('detail_destination_view');
    }
}
