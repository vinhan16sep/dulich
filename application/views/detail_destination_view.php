<link rel="stylesheet" href="<?php echo site_url('assets/lib/OwlCarousel2-2.3.4/dist/assets/') ?>owl.carousel.min.css">
<link rel="stylesheet" href="<?php echo site_url('assets/lib/OwlCarousel2-2.3.4/dist/assets/') ?>owl.theme.default.min.css">

<section id="detail-destination">
	<div id="slide" class="carousel slide main-slide" data-ride="carousel">
		<div class="carousel-inner">
            <?php for ($i = 0; $i < 3; $i++) { ?>
				<div class="carousel-item <?php echo ($i == 0)? 'active' : '' ?>">
					<div class="mask">
						<img src="https://images.unsplash.com/photo-1544842413-05944bc01da2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80" alt="Image slide">
					</div>
				</div>
            <?php } ?>
		</div>
		<a class="carousel-control-prev" href="#slide" role="button" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="carousel-control-next" href="#slide" role="button" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>

		<div class="carousel-caption">
			<div class="container">
				<div class="row">
					<div class="item col-xs-12 col-lg-6">
						<h1>Title Comes Here</h1>
						<p class="text-wrapper">
							Donec pellentesque libero ac varius lobortis. Cras placerat imperdiet urna, in posuere urna elementum in. Ut commodo lectus diam, a volutpat elit iaculis eget. Nunc varius nec ex eu volutpat. Morbi fermentum metus quis quam posuere vehicula. Mauris consectetur arcu nulla, sed cursus arcu auctor et. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
						</p>
					</div>
				</div>
			</div>
		</div>

		<div class="link-region">
			<ul>
                <?php for ($i = 0; $i < 3; $i++) { ?>
					<li class="<?php echo ($i == 1)? 'active' : '' ?>">
						<a href="<?php echo base_url('destinations/detail') ?>">
							Region <?php echo $i+1 ?> of Vietnam
						</a>
					</li>
                <?php } ?>
			</ul>
		</div>

		<div class="link-control">
			<div class="container">
				<ul>
                    <?php for ($i = 0; $i < 9; $i++) { ?> <!-- Max 9 items -->
						<li class="<?php echo ($i == 1)? 'active' : '' ?>">
							<a href="<?php echo base_url('') ?>">
								City <?php echo $i+1 ?> of Vietnam
							</a>
						</li>
                    <?php } ?>
				</ul>
			</div>
		</div>
	</div>

    <div class="container-fluid" id="content">

		<div class="container-fluid" id="introduce">
            <?php for ($i = 0; $i < 4; $i++) { ?>
				<div class="item">
					<div class="row <?php echo ($i%2!=0)? 'reversed' : '' ?>">
						<div class="mask col-xs-12 col-lg-8">
							<img src="https://images.unsplash.com/photo-1528127269322-539801943592?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80" alt="Image Destination <?php echo $i+1 ?> ">
						</div>

						<div class="content col-xs-12 col-lg-4">
							<div class="text">
								<h3>Title comes here</h3>
								<p>Sed accumsan commodo hendrerit. Nullam at vestibulum nunc. Duis id consectetur ligula. Ut non tellus ultrices, porta quam sed, cursus tortor. Aenean eget sagittis diam. Pellentesque venenatis tellus sit amet nisi vehicula, id bibendum est dapibus. Ut efficitur efficitur orci, quis porttitor quam laoreet non. Duis in finibus quam. Aenean a libero lobortis, feugiat quam congue, cursus diam.</p>
							</div>
						</div>
					</div>
				</div>
            <?php } ?>
		</div>


        <div class="container-fluid" id="tab-content">

        </div>

		<div class="container-fluid" id="images">
			<div class="heading">
				<h3>Images & Videos</h3>
			</div>
			<div class="body">
				<div class="owl-carousel">
					<?php for ($i = 0; $i < 7; $i++) { ?>
						<div class="item">
							<div class="mask">
								<img src="https://images.unsplash.com/photo-1545095572-9bfd2666d3e0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80" alt="Image Slide">
							</div>
						</div>
					<?php } ?>
				</div>
			</div>
		</div>

		<?php for ($j = 0; $j < 3; $j++) { ?>
		<div class="container-fluid posts">
			<div class="container">
				<div class="heading">
					<h3>Post Heading</h3>
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
		<?php } ?>
    </div>
</section>

<script src="<?php echo site_url('assets/lib/OwlCarousel2-2.3.4/dist/') ?>owl.carousel.min.js"></script>
<script>
    $(document).ready(function(){
        $("#images .owl-carousel").owlCarousel({
			center: true,
			items: 3,
			loop: true,
			margin: 30,
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

        $(".owl-carousel.post-list").owlCarousel({
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