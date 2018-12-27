<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<!DOCTYPE html>
<html>
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- TITLE -->
	<title>Vietnam Travellog</title>

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
				<li>
					<a href="<?php echo base_url('diem-den') ?>">
						Destination
					</a>
				</li>
				<li>
					<a href="<?php echo base_url('su-kien/mien-bac') ?>">
						Events
					</a>
				</li>
				<li>
					<a href="<?php echo base_url('mon-an/mien-bac') ?>">
						Cuisine
					</a>
				</li>
				<li>
					<a href="<?php echo base_url('bai-viet') ?>">
						Blog Review
					</a>
				</li>
				<li>
					<a href="<?php echo base_url('contact') ?>">
						Contact
					</a>
				</li>

				<li class="li-lang">
                    <a class="change-language" data-language="en" href="javascript:void(0)" href="<?php echo base_url('') ?>">
                        En
                    </a>
				</li>

				<li class="li-lang">
                    <a class="active change-language" data-language="vi" href="javascript:void(0)" href="<?php echo base_url('') ?>">
                        Vi
                    </a>
				</li>

				<li>
					<a href="javascript:void(0);">
						<i class="fas fa-search"></i> <span>Search</span>
					</a>
				</li>
			</ul>

			<div class="info">
				<h4>Our Address</h4>

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
