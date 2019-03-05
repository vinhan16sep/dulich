<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'homepage';
$route['404_override'] = 'noPage';
$route['translate_uri_dashes'] = TRUE;

$route['^en/(.+)$'] = "$1"; 
$route['^hu/(.+)$'] = "$1";

$route['^en$'] = $route['default_controller']; 
$route['^hu$'] = $route['default_controller'];

$route['admin'] = 'admin/dashboard';
$route['admin/destination/sort-province'] = 'admin/destination/sort_province';

$route['su-kien/([a-zA-Z0-9-_]+)'] = 'events/detail/$1';
$route['search'] = 'search';

$route['san-pham/([a-zA-Z0-9-_]+)'] = 'product/detail/$1';
$route['nhom/([a-zA-Z0-9-_]+)'] = 'product/category/$1';

$route['bai-viet/([a-zA-Z0-9-_]+)'] = 'post/detail/$1';
$route['danh-muc/([a-zA-Z0-9-_]+)'] = 'post/category/$1';


//url cho destination
$route['destination/([a-zA-Z0-9-_]+)'] = 'destinations/detailpost/$1';// update url 20/02/2019
$route['diem-den'] = 'destinations/index';
$route['diem-den/([a-zA-Z0-9-_]+)'] = 'destinations/region/$1';
$route['diem-den/([a-zA-Z0-9-_]+)/([a-zA-Z0-9-_]+)'] = 'destinations/province/$1/$2';
// $route['diem-den/([a-zA-Z0-9-_]+)/([a-zA-Z0-9-_]+)/([a-zA-Z0-9-_]+)'] = 'destinations/detailpost/$1/$2/$3';

//url cho cusnine
// $route['mon-an'] = 'cuisine/index';
$route['cuisine/([a-zA-Z0-9-_]+)'] = 'cuisine/index/$1';// update url 20/02/2019
$route['mon-an/([a-zA-Z0-9-_]+)'] = 'cuisine/region/$1';
// $route['mon-an/([a-zA-Z0-9-_]+)/([a-zA-Z0-9-_]+)/([a-zA-Z0-9-_]+)'] = 'cuisine/detail/$1/$2/$3';

//url cho events
$route['events/ajax_event'] = 'events/ajax_event';// update url 20/02/2019
$route['events/([a-zA-Z0-9-_]+)'] = 'events/index/$1';// update url 20/02/2019
$route['su-kien/([a-zA-Z0-9-_]+)'] = 'events/region/$1';
$route['su-kien/([a-zA-Z0-9-_]+)/([a-zA-Z0-9-_]+)'] = 'events/province/$1/$2';
// $route['su-kien/([a-zA-Z0-9-_]+)/([a-zA-Z0-9-_]+)/([a-zA-Z0-9-_]+)'] = 'events/detail/$1/$2/$3';

//url cho blogs
$route['bai-viet'] = 'blogs/index';
$route['blog/([a-zA-Z0-9-_]+)'] = 'blogs/detail/$1';// update url 20/02/2019
$route['bai-viet/([a-zA-Z0-9-_]+)'] = 'blogs/region/$1';
$route['bai-viet/([a-zA-Z0-9-_]+)/([a-zA-Z0-9-_]+)'] = 'blogs/province/$1/$2';
// $route['bai-viet/([a-zA-Z0-9-_]+)/([a-zA-Z0-9-_]+)/([a-zA-Z0-9-_]+)'] = 'blogs/detail/$1/$2/$3';

//about
$route['ve-chung-toi'] = 'about/index';

//contact
$route['lien-he'] = 'contact/index';

//admin about
$route['admin/about/bai-viet'] = 'admin/about/index/bai-viet';
$route['admin/about/dich-vu'] = 'admin/about/index/dich-vu';
$route['admin/about/team'] = 'admin/about/index/team';
$route['admin/about/banner'] = 'admin/about/index/banner';
