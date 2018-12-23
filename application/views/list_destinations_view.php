<section id="destinations">
	<div class="main-cover">
		<div class="mask">
			<img src="https://images.unsplash.com/photo-1544903256-014821bdd421?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80" alt="Image Cover Blog">

			<div class="content">
				<div class="container">
					<div class="row">
						<div class="item col-xs-12 col-lg-6">
							<h1>Title Comes Here</h1>
							<p class="text-wrapper">
								Donec pellentesque libero ac varius lobortis. Cras placerat imperdiet urna, in posuere urna elementum in. Ut commodo lectus diam, a volutpat elit iaculis eget. Nunc varius nec ex eu volutpat. Morbi fermentum metus quis quam posuere vehicula. Mauris consectetur arcu nulla, sed cursus arcu auctor et. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
							</p>
						</div>
					</div>

					<div class="link-control">
						<ul>
                            <?php for ($i = 0; $i < 3; $i++) { ?>
								<li class="<?php echo ($i == 1)? 'active' : '' ?>">
									<a href="<?php echo base_url('') ?>">
										Region <?php echo $i+1 ?> of Vietnam
									</a>
								</li>
                            <?php } ?>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

    <div class="container-fluid" id="list-destinations">
		<div class="container">
			<div class="grid">
				<div class="grid-sizer"></div>
				<?php for ($i = 1; $i < 9; $i++) { ?>
					<div class="grid-item <?php if( ($i == 1) || ($i == 4) || ($i == 5) || ($i == 8) ) { ?> grid-item-2 <?php } ?>">
						<a href="<?php echo base_url('destinations/detail') ?>">
							<div class="inner">
								<div class="mask">
									<img src="https://images.unsplash.com/photo-1540202404-fad3e2190841?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1490&q=80" alt="Image Province">

									<div class="title">
										<h2>Province</h2>
										<h6>Province Title</h6>
									</div>
								</div>
								<div class="content">
									<ul> <!-- List Destinations -->
                                        <?php if( ($i == 1) || ($i == 4) || ($i == 5) || ($i == 8) ) { ?>
                                            <?php for ($j = 0; $j < 4; $j++) { ?>
												<li>
													Destination
												</li>
                                            <?php } ?>
                                        <?php } ?>
                                        <?php if( ($i == 2) || ($i == 3) || ($i == 6) || ($i == 7) ) { ?>
                                            <?php for ($j = 0; $j < 2; $j++) { ?>
												<li>
													Destination
												</li>
                                            <?php } ?>
                                        <?php } ?>
									</ul>
								</div>
							</div>
						</a>
					</div>
				<?php } ?>
			</div>

			<div class="see-more">
				<button class="btn btn-primary" type="button">
					See more <i class="fas fa-angle-double-right"></i>
				</button>
			</div>
		</div>
    </div>

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
        });
	</script>
</section>