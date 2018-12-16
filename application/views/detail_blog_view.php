<section id="detail-blog">
    <div class="cover">
		<div class="mask">
			<img src="https://images.unsplash.com/photo-1544903256-014821bdd421?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80" alt="Image Cover Blog">

			<div class="content">
				<div class="container">
					<h2>Blog Title Comes Here</h2>
					<p class="text-wrapper">
						Nam blandit consectetur nisi, sit amet scelerisque risus facilisis pellentesque. Proin risus arcu, pretium non elit non, faucibus consectetur metus. In hac habitasse platea dictumst. Curabitur maximus turpis mi, a dapibus nulla ultricies ut. Aenean gravida nisl ut orci facilisis, quis molestie ipsum finibus. Aliquam lectus tellus, accumsan vel mi ut, pulvinar ultricies enim. Etiam varius massa et volutpat feugiat. Suspendisse bibendum ipsum et elit tincidunt tincidunt. In semper et neque sit amet euismod.
					</p>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid" id="content">
		<div class="container">
			<div class="row">
				<div class="left col-xs-12 col-lg-8">
					<article>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis nunc imperdiet tellus aliquet vulputate. Donec commodo eget sem eget cursus. Nunc erat tortor, porttitor at blandit vel, viverra et ipsum. Etiam elementum felis at felis mattis, ut finibus lorem blandit. Pellentesque eleifend nisl quis elementum facilisis. Nam vulputate malesuada dui ut tincidunt. Integer at dignissim leo. Proin nec sapien metus. Sed a risus justo. Donec dictum sapien magna, ac semper nisi varius a. Curabitur ornare egestas metus, sed aliquam elit lacinia vitae. Duis at tempor velit. Cras dolor ligula, congue sit amet aliquam eget, facilisis sed risus. Aliquam ac nisl in est semper facilisis nec quis felis.</p>

						<p>Nam blandit consectetur nisi, sit amet scelerisque risus facilisis pellentesque. Proin risus arcu, pretium non elit non, faucibus consectetur metus. In hac habitasse platea dictumst. Curabitur maximus turpis mi, a dapibus nulla ultricies ut. Aenean gravida nisl ut orci facilisis, quis molestie ipsum finibus. Aliquam lectus tellus, accumsan vel mi ut, pulvinar ultricies enim. Etiam varius massa et volutpat feugiat. Suspendisse bibendum ipsum et elit tincidunt tincidunt. In semper et neque sit amet euismod.</p>

						<p>Ut euismod nisi id maximus varius. Donec et tincidunt magna. Nam ac mi mauris. Maecenas non euismod erat. Donec dolor elit, rutrum non massa non, vulputate sollicitudin urna. Donec ac turpis vitae neque ultricies blandit et eget est. Vestibulum sagittis, turpis in finibus malesuada, diam sem varius magna, quis scelerisque leo sem ultricies turpis. Pellentesque placerat cursus lacus, quis congue urna vestibulum nec. Aenean facilisis sit amet sapien quis viverra.</p>

						<img src="https://images.unsplash.com/photo-1544903256-014821bdd421?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80" alt="Image in Blog">

						<p>Nam blandit consectetur nisi, sit amet scelerisque risus facilisis pellentesque. Proin risus arcu, pretium non elit non, faucibus consectetur metus. In hac habitasse platea dictumst. Curabitur maximus turpis mi, a dapibus nulla ultricies ut. Aenean gravida nisl ut orci facilisis, quis molestie ipsum finibus. Aliquam lectus tellus, accumsan vel mi ut, pulvinar ultricies enim. Etiam varius massa et volutpat feugiat. Suspendisse bibendum ipsum et elit tincidunt tincidunt. In semper et neque sit amet euismod.</p>

						<p>Ut euismod nisi id maximus varius. Donec et tincidunt magna. Nam ac mi mauris. Maecenas non euismod erat. Donec dolor elit, rutrum non massa non, vulputate sollicitudin urna. Donec ac turpis vitae neque ultricies blandit et eget est. Vestibulum sagittis, turpis in finibus malesuada, diam sem varius magna, quis scelerisque leo sem ultricies turpis. Pellentesque placerat cursus lacus, quis congue urna vestibulum nec. Aenean facilisis sit amet sapien quis viverra.</p>
					</article>
				</div>

				<div class="right col-xs-12 col-lg-4">
					<div class="recommended">
                        <?php for ($i = 0; $i < 3; $i++) { ?>
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