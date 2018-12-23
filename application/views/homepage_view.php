<!-- Import Owl Carousel -->
<link rel="stylesheet" href="<?php echo site_url('assets/lib/OwlCarousel2-2.3.4/dist/assets/') ?>owl.carousel.min.css">
<link rel="stylesheet" href="<?php echo site_url('assets/lib/OwlCarousel2-2.3.4/dist/assets/') ?>owl.theme.default.min.css">

<section id="homepage">
	<div id="slideHomepage" class="carousel slide carousel-fade" data-ride="carousel">
		<ol class="carousel-indicators">
            <?php for ($i = 0; $i < 3; $i++) { ?>
				<li data-target="#slideHomepage" data-slide-to="<?php echo $i ?>" class="<?php echo ($i == 0)? 'active' : '' ?>"></li>
			<?php } ?>
		</ol>
		<div class="carousel-inner">
			<?php for ($i = 0; $i < 3; $i++) { ?>
				<div class="carousel-item <?php echo ($i == 0)? 'active' : '' ?>">
					<div class="mask">
						<img src="https://images.unsplash.com/photo-1544842413-05944bc01da2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80" alt="Image slide">
					</div>
					<div class="carousel-caption">
						<div class="row">
							<div class="item col-xs-12 col-lg-4">
								<span class="badge">Badge Subtitle</span>
								<h3>Province</h3>
								<h6 class="text-wrapper">Description</h6>
							</div>
							<div class="item col-xs-12 col-lg-4">
								<p class="text-wrapper">
									Donec pellentesque libero ac varius lobortis. Cras placerat imperdiet urna, in posuere urna elementum in. Ut commodo lectus diam, a volutpat elit iaculis eget. Nunc varius nec ex eu volutpat. Morbi fermentum metus quis quam posuere vehicula. Mauris consectetur arcu nulla, sed cursus arcu auctor et. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
								</p>
								<a href="<?php echo base_url('') ?>" class="btn btn-default" role="button">
									View Detail
								</a>
							</div>
						</div>
					</div>
				</div>
			<?php } ?>
		</div>
		<a class="carousel-control-prev" href="#slideHomepage" role="button" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="carousel-control-next" href="#slideHomepage" role="button" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<div class="container-fluid" id="exp-activities">
		<div class="heading">
			<h3>Experience Activities</h3>
		</div>

		<div class="body">
			<div id="north">
				<div class="grid">
					<div class="grid-sizer"></div>
                    <?php for ($i = 0; $i < 3; $i++) { ?>
						<div class="grid-item <?php if($i == 0) { echo 'item-full';} elseif($i > 0) { echo 'item-half';}  ?>">
							<div class="mask">
								<img src="https://images.unsplash.com/photo-1544807375-1768e388cb98?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80" alt="Image Province <?php echo $i+1 ?>">

								<div class="content">
									<?php if($i == 0) { ?>
										<h1>Region Title</h1>
										<a href=" <?php echo base_url('') ?>" class="btn btn-default" role="button">
											See all Destinations
										</a>
									<?php } ?>

                                    <?php if($i > 0) { ?>
										<a href="<?php echo base_url('') ?>">
											<span class="badge">Badge Province</span>
											<h4>Province Title</h4>
											<p class="text-wrapper">
												Donec pellentesque libero ac varius lobortis. Cras placerat imperdiet urna, in posuere urna elementum in. Ut commodo lectus diam, a volutpat elit iaculis eget. Nunc varius nec ex eu volutpat. Morbi fermentum metus quis quam posuere vehicula. Mauris consectetur arcu nulla, sed cursus arcu auctor et. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
											</p>
										</a>
                                    <?php } ?>
								</div>
							</div>
						</div>
                    <?php } ?>
				</div>
			</div>

			<div id="center">
				<div class="row">
					<div class="left col-xs-12 col-lg-7">
						<div class="mask">
							<img src="https://images.unsplash.com/photo-1544807375-1768e388cb98?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80" alt="Image Region">

							<div class="content">
								<h1>Region Title</h1>
								<a href=" <?php echo base_url('') ?>" class="btn btn-default" role="button">
									See all Destinations
								</a>
							</div>

							<div class="list-region">
								<ul>
									<?php for ($i = 0; $i < 18; $i++) { ?>
										<li>
											<a href="<?php echo base_url() ?>">
												Region of Center Vietnam
											</a>
										</li>
									<?php } ?>
								</ul>
							</div>
						</div>
					</div>

					<div class="right col-xs-12 col-lg-5">
						<div class="row">
							<?php for ($i = 0; $i < 4; $i++) { ?>
                                <div class="item col-xs-12 col-lg-6">
									<div class="mask">
										<img src="https://images.unsplash.com/photo-1544807375-1768e388cb98?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80" alt="Image Region">
									</div>
								</div>
							<?php } ?>
						</div>
					</div>
				</div>
			</div>

			<div id="south">
				<div class="row">
					<div class="top col-xs-12 col-lg-12">
						<div class="mask">
							<img src="https://images.unsplash.com/photo-1544807375-1768e388cb98?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80" alt="Image Region">

							<div class="content">
								<h1>Region Title</h1>
								<a href=" <?php echo base_url('') ?>" class="btn btn-default" role="button">
									See all Destinations
								</a>
							</div>
						</div>
					</div>

					<div class="bottom col-xs-12 col-lg-12">
						<div class="row">
                            <?php for ($i = 0; $i < 4; $i++) { ?>
								<div class="item col-xs-12 col-lg-3">
									<div class="mask">
										<img src="https://images.unsplash.com/photo-1544807375-1768e388cb98?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80" alt="Image Region">
									</div>
								</div>
                            <?php } ?>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

	<div class="container" id="events">
		<div class="heading">
			<h3>Festivals & Events</h3>
		</div>
		<div class="body">
			<div class="grid">
				<div class="grid-sizer"></div>

				<?php for ($i = 0; $i < 7; $i++) { ?>
					<div class="grid-item <?php echo $i+1 ?>">
						<div class="mask">
							<img src="https://images.unsplash.com/photo-1544807375-1768e388cb98?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80" alt="Image Event <?php echo $i+1 ?>">

							<?php if ($i < 6){
                                echo '<div class="content">';
									echo '<a href=" ' . base_url('') . ' ">';
										echo '<span class="badge">Badge Province</span>';
										echo '<h4>Province Title</h4>';
									echo '</a>';
								echo '</div>';
							} elseif ($i == 6){
								echo '<div class="content">';
									echo '<a href=" ' . base_url('') . ' ">';
										echo '<i class="far fa-plus-square"></i>';
										echo '<p>More content</p>';
									echo '</a>';
                                echo '</div>';
							}
							?>

						</div>
					</div>
				<?php } ?>
			</div>
		</div>
	</div>

	<div class="container-fluid" id="blogs">
		<div class="container">
			<div class="heading">
				<h3>Blog Review</h3>
			</div>
			<div class="body">
				<div class="owl-carousel post-list">
                    <?php for ($i = 0; $i < 7; $i++) { ?>
						<div class="item">
							<div class="mask">
								<img src="https://images.unsplash.com/photo-1545095572-9bfd2666d3e0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80" alt="Image Slide">
							</div>
							<div class="content">
								<span class="badge">Badge Subtitle</span>
								<h3>Post Title</h3>
								<p class="text-wrapper">Description</p>

								<a href="<?php ?>" class="btn btn-primary" role="button">
									View Detail
								</a>
							</div>
						</div>
                    <?php } ?>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Owl Carousel js -->
<script src="<?php echo site_url('assets/lib/OwlCarousel2-2.3.4/dist/') ?>owl.carousel.min.js"></script>

<!-- Mansory Layout js -->
<script src="<?php echo site_url('assets/js/masonry.pkgd.min.js') ?>"></script>
<!-- imagedLoaded js -->
<script src="https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.min.js"></script>
<script>
	$(document).ready(function(){
        // init Masonry
        var $grid = $('.grid').masonry({
            // set itemSelector so .grid-sizer is not used in layout
            itemSelector: '.grid-item',
            // use element for option
            columnWidth: '.grid-sizer',
            percentPosition: true
        });
		// layout Masonry after each image loads
        $grid.imagesLoaded().progress( function() {
            $grid.masonry('layout');
        });

        $(".owl-carousel").owlCarousel({
            items: 3,
            loop: true,
            margin: 30,
			dots: true,
            responsiveClass: true,
            responsive: {
                0: {
                    items: 1
                },
                768: {
                    items: 3
                }
            }
		});
	});
</script>

