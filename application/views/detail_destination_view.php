<link rel="stylesheet" href="<?php echo site_url('assets/lib/OwlCarousel2-2.3.4/dist/assets/') ?>owl.carousel.min.css">
<link rel="stylesheet" href="<?php echo site_url('assets/lib/OwlCarousel2-2.3.4/dist/assets/') ?>owl.theme.default.min.css">

<section id="detail-destination">
	<div id="slide" class="carousel slide main-slide" data-ride="carousel">
		<div class="carousel-inner">
			<?php if ( json_decode($province['image']) ): ?>
				<?php foreach (json_decode($province['image']) as $key => $value): ?>
					<div class="carousel-item <?php echo ($key == 0)? 'active' : '' ?>">
						<div class="mask">
							<img src="<?php echo base_url('assets/upload/province/' . $province['slug'] . '/' . $value) ?>" alt="Image slide">
						</div>
					</div>
				<?php endforeach ?>
			<?php endif ?>
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
						<h1><?php echo $province['title'] ?></h1>
						<p class="text-wrapper">
                            <?php echo $province['description'] ?>
						</p>
					</div>
				</div>
			</div>
		</div>

		<div class="link-region">
			<ul>
				<?php if ($region_all): ?>
					<?php foreach ($region_all as $key => $value): ?>
						<li class="<?php echo ($this->uri->segment(2) == $value['slug']) ? 'active' : '' ?>">
							<a href="<?php echo base_url('diem-den/') . $value['slug'] ?>">
								<?php echo $value['title'] ?>
							</a>
						</li>
					<?php endforeach ?>
				<?php endif ?>
			</ul>
		</div>

		<div class="link-control">
			<div class="container">
				<ul>
					<?php if ($province_all): ?>
						<?php foreach ($province_all as $key => $value): ?>
							<li class="<?php echo ($this->uri->segment(3) == $value['slug']) ? 'active' : '' ?>">
								<a href="<?php echo base_url('diem-den/') . $this->uri->segment(2) . '/' .$value['slug'] ?>">
									<?php echo $value['title'] ?>
								</a>
							</li>
						<?php endforeach ?>
					<?php endif ?>
				</ul>
			</div>
		</div>
	</div>

    <div class="container-fluid" id="content">

		<div class="container-fluid" id="introduce">
			<?php if ($destination): ?>
				<?php foreach ($destination as $key => $value): ?>
					<div class="item">
						<div class="row <?php echo ($key % 2 != 0)? 'reversed' : '' ?>">
							<div class="mask col-xs-12 col-lg-8">
								<img src="<?php echo base_url('assets/upload/destination/') . $value['slug'] . '/' . $value['avatar'] ?>" alt="image-<?php echo $value['slug'] ?> ">
							</div>

							<div class="content col-xs-12 col-lg-4">
								<div class="text">
									<h3><?php echo $value['title'] ?></h3>
									<p><?php echo $value['description'] ?></p>
								</div>
							</div>
						</div>
					</div>
				<?php endforeach ?>
			<?php endif ?>
		</div>


        <div class="container-fluid" id="tab-content">

        </div>

		<div class="container-fluid" id="images">
			<div class="heading">
				<h3><?php echo $this->lang->line('destinations_title_images') ?></h3>
			</div>
			<div class="body">
				<div class="owl-carousel">
					<?php if (json_decode($province['image'])): ?>
						<?php foreach (json_decode($province['image']) as $key => $value): ?>
							<div class="item">
								<div class="mask">
									<img src="<?php echo base_url('assets/upload/province/') . $province['slug'] . '/' . $value ?>" alt="Image Slide">
								</div>
							</div>
						<?php endforeach ?>
					<?php endif ?>
				</div>
			</div>
		</div>
		
		<?php if ($destination_bottom): ?>
			<div class="container-fluid posts">
				<div class="container">
					<div class="heading">
						<h3><?php echo $this->lang->line('menu_destinations') ?></h3>
					</div>
					<div class="body">
						<div class="owl-carousel post-list">
							<?php foreach ($destination_bottom as $key => $value): ?>
								<div class="item">
									<div class="mask">
										<img src="<?php echo base_url('assets/upload/destination/') . $value['slug'] . '/' . $value['avatar'] ?>" alt="Image Slide">
									</div>
									<div class="content">
										<h3><?php echo $value['title'] ?></h3>
										<p class="text-wrapper"><?php echo $value['description'] ?></p>

										<a href="<?php echo base_url('diem-den/' . $this->uri->segment(2) . '/' .$this->uri->segment(3) . '/' . $value['slug']); ?>" class="btn btn-primary" role="button">
                                            <?php echo $this->lang->line('btn_view_detail') ?>
										</a>
									</div>
								</div>
							<?php endforeach ?>
						</div>
					</div>
				</div>
			</div>
		<?php endif ?>

		<?php if ($events_bottom): ?>
			<div class="container-fluid posts">
				<div class="container">
					<div class="heading">
						<h3><?php echo $this->lang->line('menu_events') ?></h3>
					</div>
					<div class="body">
						<div class="owl-carousel post-list">
							<?php foreach ($events_bottom as $key => $value): ?>
								<div class="item">
									<div class="mask">
										<img src="<?php echo base_url('assets/upload/events/') . $value['slug'] . '/' . $value['image'] ?>" alt="Image Slide">
									</div>
									<div class="content">
										<h3><?php echo $value['title'] ?></h3>
										<p class="text-wrapper"><?php echo $value['description'] ?></p>

										<a href="<?php echo base_url('su-kien/' . $this->uri->segment(2) . '/' .$this->uri->segment(3) . '/' . $value['slug']) ?>" class="btn btn-primary" role="button">
                                            <?php echo $this->lang->line('btn_view_detail') ?>
										</a>
									</div>
								</div>
							<?php endforeach ?>
						</div>
					</div>
				</div>
			</div>
		<?php endif ?>

		<?php if ($cuisine_bottom): ?>
			<div class="container-fluid posts">
				<div class="container">
					<div class="heading">
						<h3><?php echo $this->lang->line('menu_cuisine') ?></h3>
					</div>
					<div class="body">
						<div class="owl-carousel post-list">
							<?php foreach ($cuisine_bottom as $key => $value): ?>
								<div class="item">
									<div class="mask">
										<img src="<?php echo base_url('assets/upload/cuisine/') . $value['slug'] . '/' . $value['avatar'] ?>" alt="Image Slide">
									</div>
									<div class="content">
										<h3><?php echo $value['title'] ?></h3>
										<p class="text-wrapper"><?php echo $value['description'] ?></p>

										<a href="<?php ?>" class="btn btn-primary" role="button">
                                            <?php echo $this->lang->line('btn_view_detail') ?>
										</a>
									</div>
								</div>
							<?php endforeach ?>
						</div>
					</div>
				</div>
			</div>
		<?php endif ?>
		
    </div>
</section>

<script src="<?php echo site_url('assets/lib/OwlCarousel2-2.3.4/dist/') ?>owl.carousel.min.js"></script>
<script>
    $(document).ready(function(){
        $("#images .owl-carousel").owlCarousel({
			center: true,
			items: 3,
			loop: true,
			dots: true,
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
			loop: false,
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