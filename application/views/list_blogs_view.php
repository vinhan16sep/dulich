<section id="blogs">
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

	<div class="container-fluid" id="list-blogs">
		<div class="container">
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
						<button class="btn btn-primary" type="button">
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
	</div>
</section>