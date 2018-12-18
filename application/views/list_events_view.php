<section id="events">
    <div id="slide" class="carousel slide carousel-fade" data-ride="carousel">
        <div class="carousel-inner">
            <?php for ($i = 0; $i < 3; $i++) { ?>
                <div class="carousel-item <?php echo ($i == 0)? 'active' : '' ?>">
                    <div class="mask">
                        <img src="https://images.unsplash.com/photo-1544842413-05944bc01da2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80" alt="Image slide">
                    </div>
                    <div class="carousel-caption">
                        <div class="row">
                            <div class="item col-xs-12 col-lg-4">
                                <h3>Title Comes Here</h3>
                                <h6 class="text-wrapper">Description</h6>
                            </div>
                            <div class="item col-xs-12 col-lg-4">
                                <p class="text-wrapper">
                                    Donec pellentesque libero ac varius lobortis. Cras placerat imperdiet urna, in posuere urna elementum in. Ut commodo lectus diam, a volutpat elit iaculis eget. Nunc varius nec ex eu volutpat. Morbi fermentum metus quis quam posuere vehicula. Mauris consectetur arcu nulla, sed cursus arcu auctor et. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
                                </p>
                            </div>
                        </div>
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
    </div>

    <div class="container-fluid" id="list-events">
        <div class="container">
			<ul class="nav nav-pills nav-fill" id="pills-tab" role="tablist">
                <?php $Region = array('North' , 'Center' , 'Shouth') ?>
                <?php for ($j = 0; $j < 3; $j++) { ?>
					<li class="nav-item">
						<a class="nav-link <?php echo ($j == 0)? 'active' : '' ?>" id="pills-region-<?php echo $j+1 ?>-tab" data-toggle="pill" href="#pills-region-<?php echo $j+1 ?>" role="tab" aria-controls="pills-<?php echo $j+1 ?>" aria-selected="true">
							<?= $Region[$j] ?> of Vietnam
						</a>
					</li>
                <?php } ?>
			</ul>

			<div class="tab-content" id="pills-tabContent">
                <?php for ($j = 0; $j < 3; $j++) { ?>
					<div class="tab-pane fade show <?php echo ($j == 0)? 'active' : '' ?>" id="pills-region-<?php echo $j+1 ?>" role="tabpanel" aria-labelledby="pills-region-<?php echo $j+1 ?>-tab">
						<div class="grid">
							<div class="grid-sizer"></div>
                            <?php foreach ($region[$j] as $key => $value): ?>
								<div class="grid-item <?php echo ($key%2!=0)? 'item-odd' : 'item-even' ?>">
									<div class="mask">
										<a href="<?php echo base_url('su-kien/'.$value['slug']) ?>">
											<img src="<?php echo base_url('assets/upload/events/'.$value['slug'].'/'.$value['image']); ?>" alt="Image Event <?php echo $key+1 ?>">

											<div class="content">

												<span class="badge"><?= $value['province_title_vi'] ?></span>
												<h3><?= $value['title_vi'] ?></h3>
												<h6><?= (date_format(date_create($value['date_start']),"d M Y") == date_format(date_create($value['date_end']),"d M Y")) ? date_format(date_create($value['date_start']),"d M Y") : date_format(date_create($value['date_start']),"d M Y").' - '.date_format(date_create($value['date_end']),"d M Y") ?></h6>

                                                <?php if ($key%2!=0) { ?>
													<p class="text-wrapper">
														<?= $value['description_vi'] ?>
													</p>
                                                <?php } ?>

											</div>
										</a>
									</div>
								</div>
                            
                            <?php endforeach ?>
						</div>
					</div>
                <?php } ?>
			</div>

            <div class="see-more">
                <button class="btn btn-default" type="button">
                    See more <i class="fas fa-angle-double-right"></i>
                </button>
            </div>
        </div>
    </div>
</section>

<!-- Mansory Layout js -->
<script src="<?php echo site_url('assets/js/masonry.pkgd.min.js') ?>"></script>
<!-- imagedLoaded js -->
<script src="https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.min.js"></script>

<script>
    $(document).ready(function(){
        // //init Masonry
        // var $grid = $('.grid').masonry({
        //     // set itemSelector so .grid-sizer is not used in layout
        //     itemSelector: '.grid-item',
        //     // use element for option
        //     columnWidth: '.grid-sizer',
        //     percentPosition: true
        // });
        // // layout Masonry after each image loads
        // $grid.imagesLoaded().progress( function() {
        //     $grid.masonry('layout');
        // });

        //init Masonry

		$('.tab-pane').each(function({
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
			})
		);
    });
</script>