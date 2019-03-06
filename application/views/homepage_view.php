<!-- Import Owl Carousel -->
<link rel="stylesheet" href="<?php echo site_url('assets/lib/OwlCarousel2-2.3.4/dist/assets/') ?>owl.carousel.min.css">
<link rel="stylesheet" href="<?php echo site_url('assets/lib/OwlCarousel2-2.3.4/dist/assets/') ?>owl.theme.default.min.css">

<section id="homepage">
    <div id="slideHomepage" class="carousel slide carousel-fade" data-ride="carousel">
        <ol class="carousel-indicators">
            <?php foreach ($banners as $key => $value): ?>
                <li data-target="#slideHomepage" data-slide-to="<?php echo $key ?>" class="<?php echo ($key == 0)? 'active' : '' ?>"></li>
            <?php endforeach ?>
        </ol>
        <div class="carousel-inner">
            <?php foreach ($banners as $key => $value): ?>
                <div class="carousel-item <?php echo ($key == 0)? 'active' : '' ?>">
                    <div class="mask">
                        <img src="<?php echo base_url('assets/upload/banner/' . $value['image']) ?>" alt="Image slide">
                    </div>
                    <div class="carousel-caption">
						<span class="badge"><?php echo $value['province']['title'] ?></span>
						<h1><?php echo $value['title'] ?></h1>
						<h4 class="text-wrapper"><?php echo $value['description'] ?></h4>

						<!--
                        <div class="row">
                            <div class="item col-xs-12 col-lg-4">
                                <span class="badge"><?php echo $value['province']['title'] ?></span>
                                <h1><?php echo $value['title'] ?></h1>
                                <h4 class="text-wrapper"><?php echo $value['description'] ?></h4>
                            </div>
                            <div class="item col-xs-12 col-lg-4">
                                <p class="text-wrapper">
                                    <?php echo $value['description'] ?>
                                </p>
                                <a href="<?php echo $value['url'] ?>" class="btn btn-primary" role="button">
                                    <?php echo $this->lang->line('btn_view_detail'); ?>
                                </a>
                            </div>
                        </div>
						-->
                    </div>
                </div>
            <?php endforeach ?>
            
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
            <h3><?php echo $this->lang->line('menu_destinations'); ?></h3>
        </div>

        <div class="body">
            <div id="north" class="regions">
                <div class="row no-gutters">
                    <div class="top col-xs-12 col-lg-12">
                        <div class="mask">
                            <img src="<?php echo base_url('assets/upload/region/' . $region[0]['slug'] . '/' . $region[0]['img_homepage']) ?>" alt="Image Province">
                            <div class="content">
                                <h1><?php echo $this->lang->line('north'); ?></h1>
                                <a href=" <?php echo base_url('diem-den/mien-bac') ?>" class="btn btn-primary" role="button">
                                    <?php echo $this->lang->line('btn_see_all_destination'); ?>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="bottom col-xs-12 col-lg-12">
                        <div class="row no-gutters">
                            <?php foreach ($province_north as $key => $value): ?>
                                <?php if($key < 4) { ?>
                                    <div class="item col-xs-12 col-lg-3">
                                        <div class="mask">
                                            <a href="<?php echo base_url('diem-den/mien-bac/' . $value['slug']) ?>">
                                                <img src="<?php echo base_url('assets/upload/province/' . $value['slug'] . '/' . $value['avatar']) ?>" alt="<?php echo $value['slug'] ?>">

                                                <div class="content">
                                                    <!--
														<span class="badge"><?php echo $value['province'] ?></span>
														-->
                                                    <h4><?php echo $value['title'] ?></h4>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                <?php } ?>
                            <?php endforeach ?>
                        </div>
                    </div>
                </div>
            </div>


            <div id="center" class="regions">
                <div class="row no-gutters">
                    <div class="top col-xs-12 col-lg-12">
                        <div class="mask">
                            <img src="<?php echo base_url('assets/upload/region/' . $region[1]['slug'] . '/' . $region[1]['img_homepage']) ?>" alt="Image Region">
                          
                            <div class="content">
                                <h1><?php echo $this->lang->line('middle'); ?></h1>
                                <a href=" <?php echo base_url('diem-den/mien-trung') ?>" class="btn btn-primary" role="button">
                                    <?php echo $this->lang->line('btn_see_all_destination'); ?>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="bottom col-xs-12 col-lg-12">
                        <div class="row no-gutters">
                            <?php foreach ($province_center as $key => $value): ?>
                                <?php if($key < 4) { ?>
                                    <div class="item col-xs-12 col-lg-3">
                                        <div class="mask">
                                            <a href="<?php echo base_url('diem-den/mien-trung/' . $value['slug']) ?>">
                                                <img src="<?php echo base_url('assets/upload/province/' . $value['slug'] . '/' . $value['avatar']) ?>" alt="<?php echo $value['slug'] ?>">

                                                <div class="content">
                                                    <!--
														<span class="badge"><?php echo $value['province'] ?></span>
														-->
                                                    <h4><?php echo $value['title'] ?></h4>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                <?php } ?>
                            <?php endforeach ?>
                        </div>
                    </div>
                </div>
            </div>

            <div id="south" class="regions">
                <div class="row no-gutters">
                    <div class="top col-xs-12 col-lg-12">
                        <div class="mask">
                            <img src="<?php echo base_url('assets/upload/region/' . $region[2]['slug'] . '/' . $region[2]['img_homepage']) ?>" alt="Image Region">

                            <div class="content">
                                <h1><?php echo $this->lang->line('south'); ?></h1>
                                <a href=" <?php echo base_url('diem-den/mien-nam') ?>" class="btn btn-primary" role="button">
                                    <?php echo $this->lang->line('btn_see_all_destination'); ?>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="bottom col-xs-12 col-lg-12">
                        <div class="row no-gutters">
                            <?php foreach ($province_south as $key => $value): ?>
                            	<?php if($key < 4) { ?>
									<div class="item col-xs-12 col-lg-3">
										<div class="mask">
											<a href="<?php echo base_url('diem-den/mien-nam/' . $value['slug']) ?>">
												<img src="<?php echo base_url('assets/upload/province/' . $value['slug'] . '/' . $value['avatar']) ?>" alt="<?php echo $value['slug'] ?>">

												<div class="content">
													<!--
														<span class="badge"><?php echo $value['province'] ?></span>
														-->
													<h4><?php echo $value['title'] ?></h4>
												</div>
											</a>
										</div>
									</div>
                                <?php } ?>
                            <?php endforeach ?>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="container-fluid" id="events">
        <div class="container">
            <div class="heading">
                <h3><?php echo $this->lang->line('festivals_events'); ?></h3>
            </div>
            <div class="body">
                <div class="grid">
                    <div class="grid-sizer"></div>
                    <?php foreach ($events as $key => $value): ?>
                        <div class="grid-item <?php echo $key+1 ?>">
                            <div class="mask">
                                <img src="<?php echo base_url('assets/upload/events/' . $value['slug'] . '/' . $value['image']) ?>" alt="<?php echo $value['slug'] ?>">
                                <?php if ($key < 6): ?>
                                    <div class="content">
                                        <a href="<?php echo base_url('su-kien/' . $value['region']['slug'] . '/' . $value['province']['slug'] . '/' . $value['slug']) ?>">
                                            <span class="badge"><?php echo $value['province']['title'] ?></span>
                                            <h4 class="text-wrapper"><?php echo $value['title'] ?></h4>
                                        </a>
                                    </div>
                                <?php endif ?>
                                <?php if ($key == 6): ?>
                                    <div class="content">
                                        <a href="<?php echo base_url('su-kien/mien-bac') ?>">
                                            <i class="far fa-plus-square"></i>
                                            <p><?php echo $this->lang->line('btn_view_detail'); ?></p>
                                        </a>
                                    </div>
                                <?php endif ?>
                            </div>
                        </div>
                    <?php endforeach ?>
                </div>
            </div>
        </div>
    </div>
    <div class="container" id="events">

    </div>
	<div class="container-fluid" id="blogs">
		<div class="container">
			<div class="heading">
				<h3><?php echo $this->lang->line('blog_review'); ?></h3>
			</div>
			<div class="body">
				<div class="owl-carousel post-list">
					<?php if ($blogs): ?>
						<?php foreach ($blogs as $key => $value): ?>
							<div class="item">
								<div class="mask">
									<img src="<?php echo base_url('assets/upload/blog/' . $value['slug'] . '/' . $value['avatar']) ?>" alt="Image Slide">
								</div>
								<div class="content">
									<span class="badge"><?php echo $value['province']['title_' . $lang] ?></span>
									<h3 class="text-wrapper"><?php echo $value['title_' . $lang] ?></h3>
									<p class="text-wrapper"><?php echo $value['description_' . $lang] ?></p>

									<a href="<?php echo base_url('bai-viet/' . $value['region']['slug'] . '/' . $value['province']['slug'] . '/' . $value['slug']) ?>" class="btn btn-primary" role="button">
                                        <?php echo $this->lang->line('btn_view_detail'); ?>
									</a>
								</div>
							</div>
						<?php endforeach ?>
					<?php endif ?>
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
				768:{
                    items: 2
				},
                1200: {
                    items: 3
                }
            }
        });
    });
</script>

