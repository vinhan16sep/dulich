<section id="blogs">
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

	<div class="container-fluid" id="list-blogs">
		<div class="container">
			<ul class="nav nav-pills nav-fill" id="pills-tab" role="tablist">
                <?php for ($j = 0; $j < 3; $j++) { ?>
					<li class="nav-item">
						<a class="nav-link <?php echo ($j == 0)? 'active' : '' ?>" id="pills-region-<?php echo $j+1 ?>-tab" data-toggle="pill" href="#pills-region-<?php echo $j+1 ?>" role="tab" aria-controls="pills-<?php echo $j+1 ?>" aria-selected="true">
							Region <?php echo $j+1 ?> of Vietnam
						</a>
					</li>
                <?php } ?>
			</ul>

			<div class="tab-content" id="pills-tabContent">
                <?php for ($j = 0; $j < 3; $j++) { ?>
					<div class="tab-pane fade show <?php echo ($j == 0)? 'active' : '' ?>" id="pills-region-<?php echo $j+1 ?>" role="tabpanel" aria-labelledby="pills-region-<?php echo $j+1 ?>-tab">
						<div class="row">
							<div class="left col-xs-12 col-lg-8">
                                <?php for ($i = 0; $i < 5; $i++) { ?>
									<div class="item">
										<div class="item-image">
											<div class="mask">
												<img src="https://images.unsplash.com/photo-1544900721-8df5e37f0371?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80" alt="Image Blog <?php echo $i+1 ?>">
											</div>
										</div>
										<div class="item-content">
											<div class="content-header">
												<span class="badge">Badge Subtitle</span>
												<a href="<?php echo base_url('blogs/detail') ?>">
													<h3>Blog Title</h3>
												</a>
												<h6>Author Name | <small>Author's Nationality</small></h6>
												<ul>
													<li>Rating</li>

													<li>Created Date</li>
												</ul>
											</div>
											<div class="content-body">
												<p class="text-wrapper">
													Nam blandit consectetur nisi, sit amet scelerisque risus facilisis pellentesque. Proin risus arcu, pretium non elit non, faucibus consectetur metus. In hac habitasse platea dictumst. Curabitur maximus turpis mi, a dapibus nulla ultricies ut. Aenean gravida nisl ut orci facilisis, quis molestie ipsum finibus. Aliquam lectus tellus, accumsan vel mi ut, pulvinar ultricies enim. Etiam varius massa et volutpat feugiat. Suspendisse bibendum ipsum et elit tincidunt tincidunt. In semper et neque sit amet euismod.
												</p>
											</div>
											<div class="content-footer">
												<a href="<?php echo base_url('blogs/detail') ?>" class="btn btn-primary" role="button">
													View Detail
												</a>
											</div>
										</div>
									</div>
                                <?php } ?>

								<div class="see-more">
									<button class="btn btn-default" type="button">
										See more <i class="fas fa-angle-double-right"></i>
									</button>
								</div>
							</div>

							<div class="right col-xs-12 col-lg-4">
								<div class="heading">
									<h4>Top Review</h4>
								</div>
								<div class="body">
                                    <?php for ($i = 0; $i < 4; $i++) { ?>
										<div class="item">
											<div class="item-image">
												<div class="mask">
													<img src="https://images.unsplash.com/photo-1544900721-8df5e37f0371?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80" alt="Image Blog <?php echo $i+1 ?>">
												</div>
											</div>
											<div class="item-content">
												<div class="content-header">
													<span class="badge">Badge Subtitle</span>
													<a href="<?php echo base_url('blogs/detail') ?>">
														<h3>Blog Title</h3>
													</a>
													<h6>Author Name | <small>Author's Nationality</small></h6>
													<ul>
														<li>Rating</li>

														<li>Created Date</li>
													</ul>
												</div>
												<div class="content-body">
													<p class="text-wrapper">
														Nam blandit consectetur nisi, sit amet scelerisque risus facilisis pellentesque. Proin risus arcu, pretium non elit non, faucibus consectetur metus. In hac habitasse platea dictumst. Curabitur maximus turpis mi, a dapibus nulla ultricies ut. Aenean gravida nisl ut orci facilisis, quis molestie ipsum finibus. Aliquam lectus tellus, accumsan vel mi ut, pulvinar ultricies enim. Etiam varius massa et volutpat feugiat. Suspendisse bibendum ipsum et elit tincidunt tincidunt. In semper et neque sit amet euismod.
													</p>
												</div>
												<div class="content-footer">
													<a href="<?php echo base_url('blogs/detail') ?>" class="btn btn-primary" role="button">
														View Detail
													</a>
												</div>
											</div>
										</div>
                                    <?php } ?>
								</div>
							</div>
						</div>
					</div>
				<?php } ?>
			</div>
		</div>
	</div>
</section>