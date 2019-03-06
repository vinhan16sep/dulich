<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<!DOCTYPE html>
<html>
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="description" content="<?= (isset($metadescription)) ? $metadescription : 'Vietnam Travellog' ?>">
  	<meta name="keywords" content="<?= (isset($metakeywords)) ? $metakeywords : 'Vietnam Travellog' ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- TITLE -->
	<title><?= (isset($title)) ? $title : 'Vietnam Travellog' ?></title>

	<!-- Bootstrap CSS -->
	<!--
	CDN
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	-->
	<!-- From Source -->
	<link rel="stylesheet" href="<?php echo site_url('node_modules/') ?>bootstrap/dist/css/bootstrap.min.css">

	<!-- FontAwesome 5 -->
	<!--
	CDN
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
	-->
	<!-- From Source -->
	<link rel="stylesheet" href="<?php echo site_url('node_modules/') ?>@fortawesome/fontawesome-free/css/all.min.css">

	<!-- Style -->
	<link rel="stylesheet" href="<?php echo site_url('assets/sass/') ?>style.css">

	<!-- jQuery -->
	<!--
	CDN
	<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
	-->
	<!-- From Source -->
	<script src="<?php echo site_url('node_modules/') ?>jquery/dist/jquery.min.js"></script>

	<!-- popper js -->
	<!--
	CDN
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	-->

	<!-- From Source -->
	<script src="<?php echo site_url('node_modules/') ?>popper.js/dist/popper.min.js"></script>

	<!-- Bootstrap js -->
	<!--
	CDN
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	-->
	<!-- From Source -->
	<script src="<?php echo site_url('node_modules/') ?>bootstrap/dist/js/bootstrap.min.js"></script>

</head>

<body>

<header class="">
	<div class="header-bg"></div>
	<nav>
		<div class="nav-brand">
			<a href="<?php echo base_url('/') ?>">
				<img src="<?php echo site_url('assets/img/logo-w.png') ?>" alt="Logo Vietnam Travellog">
			</a>
		</div>

		<div class="nav-main">
			<ul>
				<li class="li-sub">
					<a href="<?php echo base_url('diem-den') ?>">
						<?php echo $this->lang->line('menu_destinations'); ?> <i class="fas fa-caret-down"></i>
					</a>

					<ul>
						<li>
							<a href="<?php echo base_url('diem-den/mien-bac') ?>">
								<?php echo $this->lang->line('north_ofvietnam'); ?>
							</a>
						</li>
						<li>
							<a href="<?php echo base_url('diem-den/mien-trung') ?>">
								<?php echo $this->lang->line('middle_ofvietnam'); ?>
							</a>
						</li>
						<li>
							<a href="<?php echo base_url('diem-den/mien-nam') ?>">
								<?php echo $this->lang->line('south_ofvietnam'); ?>
							</a>
						</li>
					</ul>
				</li>
				<li class="li-sub">
					<a href="<?php echo base_url('su-kien/mien-bac') ?>">
                        <?php echo $this->lang->line('menu_events'); ?> <i class="fas fa-caret-down"></i>
					</a>

					<ul>
						<li>
							<a href="<?php echo base_url('su-kien/mien-bac') ?>">
								<?php echo $this->lang->line('north_ofvietnam'); ?>
							</a>
						</li>
						<li>
							<a href="<?php echo base_url('su-kien/mien-trung') ?>">
								<?php echo $this->lang->line('middle_ofvietnam'); ?>
							</a>
						</li>
						<li>
							<a href="<?php echo base_url('su-kien/mien-nam') ?>">
								<?php echo $this->lang->line('south_ofvietnam'); ?>
							</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="<?php echo base_url('mon-an/mien-bac') ?>">
                        <?php echo $this->lang->line('menu_cuisine'); ?>
					</a>
				</li>
				<li>
					<a href="<?php echo base_url('bai-viet') ?>">
                        <?php echo $this->lang->line('menu_blogs'); ?>
					</a>
				</li>
				<li>
					<a href="<?php echo base_url('ve-chung-toi') ?>">
                        <?php echo $this->lang->line('menu_about'); ?>
					</a>
				</li>
				<li>
					<a href="<?php echo base_url('lien-he') ?>">
                        <?php echo $this->lang->line('menu_contact'); ?>
					</a>
				</li>

				<li class="li-search">
					<a href="#">
						<i class="fas fa-search"></i>

						<div class="input-group">
							<input type="text" class="form-control" placeholder="Search..." aria-label="Recipient's username" aria-describedby="button-addon2">
							<div class="input-group-append">
								<button class="btn btn-outline-secondary" type="button" id="button-addon2">
									<i class="fas fa-search"></i>
								</button>
							</div>
						</div>
					</a>

					<div class="search-input" style="border-radius: 5px">
						<form action="<?php echo base_url('search'); ?>" method="get" accept-charset="utf-8">
							<div class="input-group">
									<input type="text" class="form-control" name="keywords" placeholder="Search..." aria-label="Recipient's username" aria-describedby="button-addon2" value="<?= (isset($keywords)) ? $keywords : '' ?>" style="border: none; margin-top: 2px">
									<div class="input-group-append">
										<button class="btn btn-outline-secondary" type="submit" id="button-addon2"><i class="fa fa-search" aria-hidden="true" ></i></button>
										<button class="btn btn-outline-secondary" type="button" id="closeSearch"><i class="fas fa-times"></i></button>
									</div>
							</div>
						</form>
					</div>
				</li>
				<li class="li-lang <?php echo ($this->session->userdata('langAbbreviation') == 'en') ? 'active' : '' ?>">
					<a class="change-language" data-language="en" href="javascript:void(0)" href="<?php echo base_url('') ?>">
						En
					</a>
				</li>

				<li class="li-lang <?php echo ($this->session->userdata('langAbbreviation') == 'vi') ? 'active' : '' ?>">
					<a class="change-language" data-language="vi" href="javascript:void(0)" href="<?php echo base_url('') ?>">
						Vi
					</a>
				</li>
			</ul>

			<div class="info">
				<h4><?php echo $this->lang->line('footer_address') ?></h4>

				<p>HANOI HEAD OFFICE</p>
				<p>Zone 3, Viet Hung, Dong Anh, Hanoi</p>
				<a href="tel:+84 123 456 789">+84 123 456 789</a>
				<a href="mailto:info@vietnamtravellog.vn">info@vietnamtravellog.vn</a>
			</div>
		</div>

		<div class="nav-expand" id="nav-expand">
			<span class="line"></span>
		</div>
	</nav>

	<div class="header-wrapper"></div>

</header>

<!--<form style="margin: 50px;" method="post" action="--><?php //echo base_url('search'); ?><!--">-->
<!--    <input type="text" name="--><?php //echo $this->security->get_csrf_token_name(); ?><!--" value="--><?php //echo $this->security->get_csrf_hash() ?><!--" placeholder="" class="form-control" id="csrf_sitecom_token" style="display: none;">-->
<!--    <div class="form-group">-->
<!--        <select class="form-control form-control-lg" name="table">-->
<!--            <option value="destination" >Destination</option>-->
<!--            <option value="cuisine" >Cuisine</option>-->
<!--            <option value="events" >Events</option>-->
<!--            <option value="blog" >Blog</option>-->
<!--        </select>-->
<!--    </div>-->
<!--    <div class="form-group">-->
<!--        <input class="form-control form-control-lg" name="search" type="text" placeholder=".form-control-lg">-->
<!--    </div>-->
<!--    <button type="submit" class="btn btn-primary form-control-lg" style="float: left">Confirm identity</button>-->
<!--</form>-->
