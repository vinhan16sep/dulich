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
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

	<!-- FontAwesome 5 -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">

	<!-- Style -->
	<link rel="stylesheet" href="<?php echo site_url('assets/sass/') ?>style.css">

	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
	<!-- popper js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>

	<!-- Bootstrap js -->
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</head>

<body>

<header class="">
	<nav>
		<div class="nav-brand">
			<a href="<?php echo base_url('') ?>">
				Vietnam <br> Travellog
			</a>
		</div>

		<div class="nav-main">
			<ul>
				<li class="li-sub">
					<a href="<?php echo base_url('') ?>">
						Destination <i class="fas fa-caret-down"></i>
					</a>
				</li>
				<li class="li-sub">
					<a href="<?php echo base_url('') ?>">
						Events <i class="fas fa-caret-down"></i>
					</a>
				</li>
				<li>
					<a href="<?php echo base_url('') ?>">
						Cuisine
					</a>
				</li>
				<li>
					<a href="<?php echo base_url('') ?>">
						Blog Review
					</a>
				</li>
				<li>
					<a href="<?php echo base_url('') ?>">
						Contact
					</a>
				</li>
			</ul>
		</div>

		<div class="nav-expand">
			<i class="fas fa-bars"></i>
		</div>
	</nav>

	<div class="header-wrapper"></div>
</header>
