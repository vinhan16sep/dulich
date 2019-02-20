
			
<section id="destinations">
	<div class="main-cover">
		<div class="mask">
			<?php $image_destination = ($this->uri->segment(1) == 'diem-den') ? $region_detail['img_destination'] : ''; ?>
			<img src="<?php echo base_url('assets/upload/region/' . $region_detail['slug'] . '/' . $image_destination) ?>" alt="Image Cover Blog">
			<div class="content">
				<div class="container">
					<div class="row">
						<div class="item col-xs-12 col-lg-6">
							<h1><?php echo $region_detail['title'] ?></h1>
							<p class="text-wrapper">
								<?php echo $region_detail['description'] ?>
							</p>
						</div>
					</div>

					<div class="link-control">
						<ul>
                            <?php if ($region): ?>
                            	<?php foreach ($region as $key => $value): ?>
                            		<?php if ($this->uri->segment(2) == ''): ?>
                            			<li class="<?php echo ($key == 0)? 'active' : '' ?>">
                            		<?php else: ?>
                            			<li class="<?php echo ($this->uri->segment(2) == $value['slug'])? 'active' : '' ?>">
                            		<?php endif ?>
                            		
										<a href="<?php echo base_url('diem-den/' . $value['slug']) ?>">
											<?php echo $value['title'];?>
										</a>
									</li>
                            	<?php endforeach ?>
                            <?php endif ?>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

    <div class="container-fluid" id="list-destinations">
		<div class="container">
			<div class="row">
                <?php
                $slug_region = 'mien-bac';
                if ($this->uri->segment(2) != '') {
                    $slug_region = $this->uri->segment(2);
                }
                ?>
                <?php if ($province): ?>
                	<?php foreach ($province as $key => $value): ?>
						<div class="item col-xs-12 col-md-6 col-lg-4">
							<a href="<?php echo base_url('diem-den/'. $slug_region . '/' .$value['slug']) ?>">
								<div class="inner">
									<div class="mask">
										<img src="<?php echo base_url('assets/upload/province/' . $value['slug'] . '/' . $value['avatar']) ?>" alt="Image Province">

										<div class="title">
											<h4><?php echo $value['title'];?></h4>
											<!--<h6><?php echo $value['description'] ?></h6>-->
										</div>
									</div>
									<div class="content">
										<ul> <!-- List Destinations -->
											<?php if (!empty($value['destination'])): ?>
												<?php foreach ($value['destination'] as $k => $val): ?>
													<li>
														<a href="<?php echo base_url('destination/' . $val['slug']); ?>">
															<?php echo $val['title'] ?>
														</a>
													</li>
												<?php endforeach ?>
											<?php else: ?>
												<li>Chưa có bài viết</li>
											<?php endif ?>
										</ul>
									</div>
								</div>
							</a>
						</div>
                    <?php endforeach ?>
                <?php endif ?>
			</div>

			<div class="see-more">
				<button class="btn btn-primary" type="button">
					<?php echo $this->lang->line('btn_see_more') ?> <i class="fas fa-angle-double-right"></i>
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