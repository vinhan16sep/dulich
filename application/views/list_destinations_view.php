<section id="destinations">
	<div class="main-cover">
		<div class="mask">
			<img src="<?php echo base_url('assets/upload/region/' . $region_detail['slug'] . '/' . $region_detail['avatar']) ?>" alt="Image Cover Blog">

			<div class="content">
				<div class="container">
					<div class="row">
						<div class="item col-xs-12 col-lg-6">
							<h1><?php echo $region_detail['title_vi'] ?></h1>
							<p class="text-wrapper">
								<?php echo $region_detail['description_vi'] ?>
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
											<?php echo $value['title_vi'] ?>
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
			<div class="grid">
				<div class="grid-sizer"></div>
				<?php
					$slug_region = 'mien-bac';
					if ($this->uri->segment(2) != '') {
						$slug_region = $this->uri->segment(2);
					}
				?>
				<?php if ($province): ?>
					<?php foreach ($province as $key => $value): ?>
						<?php 
							$grid_item = '';
							switch ($key + 1) {
								case 1:
									$grid_item = 'grid-item-2';
									break;
								case 4:
									$grid_item = 'grid-item-2';
									break;
								case 5:
									$grid_item = 'grid-item-2';
									break;
								case 8:
									$grid_item = 'grid-item-2';
									break;
								default:
									$grid_item = '';
									break;
							}
						?>
						<div class="grid-item <?php echo $grid_item ?>">
							<a href="<?php echo base_url('diem-den/'. $slug_region . '/' .$value['slug']) ?>">
								<div class="inner">
									<div class="mask">
										<img src="https://images.unsplash.com/photo-1540202404-fad3e2190841?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1490&q=80" alt="Image Province">

										<div class="title">
											<h2><?php echo $value['title_vi'] ?></h2>
											<h6><?php echo $value['description_vi'] ?></h6>
										</div>
									</div>
									<div class="content">
										<ul> <!-- List Destinations -->
											<?php if (!empty($value['destination'])): ?>
												<?php foreach ($value['destination'] as $k => $val): ?>
													<li>
														<a href="<?php echo base_url('diem-den/' . $slug_region . '/' . $value['slug'] . '/' . $val['slug']); ?>">
															<?php echo $val['title_vi'] ?>
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