<!-- Import Owl Carousel -->
<link rel="stylesheet" href="<?php echo site_url('assets/lib/OwlCarousel2-2.3.4/dist/assets/') ?>owl.carousel.min.css">
<link rel="stylesheet" href="<?php echo site_url('assets/lib/OwlCarousel2-2.3.4/dist/assets/') ?>owl.theme.default.min.css">

<section id="homepage">
    <div id="slideHomepage" class="carousel slide" data-ride="carousel">
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
                                    View Detail
                                </a>
                            </div>
                        </div>
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
            <h3>Experience Activities</h3>
        </div>

        <div class="body">
            <div id="north">
                <div class="grid">
                    <div class="grid-sizer"></div>
                    <div class="grid-item item-full">
                        <div class="mask">
                            <img src="http://www.hathaitours.com/public/img/1600x800/a257927025ba17cf148078fc7cf24642.jpg" alt="Image Province">

                            <div class="content">
                                    <h1>North of Vietnam</h1>
                                    <a href=" <?php echo base_url('diem-den/mien-bac') ?>" class="btn btn-primary" role="button">
                                        See all Destinations
                                    </a>
                            </div>
                        </div>
                    </div>
                    <?php foreach ($destination_north as $key => $value): ?>
                        <div class="grid-item item-half">
                            <div class="mask">
                                <img src="<?php echo base_url('assets/upload/destination/' . $value['slug'] . '/' . $value['avatar']) ?>" alt="<?php echo $value['slug'] ?>">

                                <div class="content">
                                    <a href="<?php echo base_url('diem-den/mien-bac/' . $value['province']['slug'] . '/' . $value['slug']) ?>">
                                        <span class="badge"><?php echo $value['province']['title'] ?></span>
                                        <h4><?php echo $value['title'] ?></h4>
                                        <p class="text-wrapper">
                                            <?php echo $value['description'] ?>
                                        </p>
                                    </a>
                                </div>
                            </div>
                        </div>
                    <?php endforeach ?>
                </div>
            </div>

            <div id="center">
                <div class="row">
                    <div class="left col-xs-12 col-lg-7">
                        <div class="mask">
                            <img src="http://vanhoaviet.com/wp-content/uploads/2016/07/kinh-nghiem-thue-tau-va-du-thuyen-tham-quan-du-lich-kham-pha-vinh-ha-long.jpg" alt="Image Region">

                            <div class="content">
                                <h1>Center of Vietnam</h1>
                                <a href=" <?php echo base_url('diem-den/mien-trung') ?>" class="btn btn-primary" role="button">
                                    See all Destinations
                                </a>
                            </div>

                            <div class="list-region">
                                <ul>
                                    <?php foreach ($province_center_all as $key => $value): ?>
                                        <li>
                                            <a href="<?php echo base_url('diem-den/mien-trung/' . $value['slug']) ?>">
                                                <?php echo $value['title'] ?>
                                            </a>
                                        </li>
                                    <?php endforeach ?>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="right col-xs-12 col-lg-5">
                        <div class="row">
                            <?php foreach ($province_center as $key => $value): ?>
                                <div class="item col-xs-12 col-lg-6">
                                    <div class="mask">
                                        <img src="<?php echo base_url('assets/upload/province/' . $value['slug'] . '/' . $value['avatar']) ?>" alt="<?php echo $value['slug'] ?>">
                                    </div>
                                </div>
                            <?php endforeach ?>
                        </div>
                    </div>
                </div>
            </div>

            <div id="south">
                <div class="row">
                    <div class="top col-xs-12 col-lg-12">
                        <div class="mask">
                            <img src="https://transviet.com.vn/Images/GallerySGN/TH05.06/causongkwai-hinhtrangdau.jpg" alt="Image Region">

                            <div class="content">
                                <h1>South of Vietnam</h1>
                                <a href=" <?php echo base_url('diem-den/mien-nam') ?>" class="btn btn-primary" role="button">
                                    See all Destinations
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="bottom col-xs-12 col-lg-12">
                        <div class="row">
                            <?php foreach ($province_south as $key => $value): ?>
                                <div class="item col-xs-12 col-lg-3">
                                    <div class="mask">
                                        <img src="<?php echo base_url('assets/upload/province/' . $value['slug'] . '/' . $value['avatar']) ?>" alt="<?php echo $value['slug'] ?>">
                                    </div>
                                </div>
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
                <h3>Festivals & Events</h3>
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
                                            <h4><?php echo $value['title'] ?></h4>
                                        </a>
                                    </div>
                                <?php endif ?>
                                <?php if ($key == 6): ?>
                                    <div class="content">
                                        <a href="<?php echo base_url('su-kien/mien-bac') ?>">
                                            <i class="far fa-plus-square"></i>
                                            <p>More content</p>
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
				<h3>Blog Review</h3>
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
									<h3><?php echo $value['title_' . $lang] ?></h3>
									<p class="text-wrapper"><?php echo $value['description_' . $lang] ?></p>

									<a href="<?php echo base_url('bai-viet/' . $value['region']['slug'] . '/' . $value['province']['slug'] . '/' . $value['slug']) ?>" class="btn btn-primary" role="button">
										View Detail
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
                768: {
                    items: 3
                }
            }
        });
    });
</script>

