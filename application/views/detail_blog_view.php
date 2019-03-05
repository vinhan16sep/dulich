<section id="detail-blog" class="detail-post">
	<div class="main-cover">
		<div class="mask">
			<img src="<?php echo base_url('assets/upload/blog/' . $blog['slug'] . '/' . $blog['avatar']) ?>" alt="Image Cover Blog">

<!--			<div class="content">-->
<!--				<div class="container">-->
<!--					<div class="row">-->
<!--						<div class="item col-xs-12 col-lg-6">-->
<!--							<h1>--><?php //echo $blog['title'] ?><!--</h1>-->
<!--							<p class="text-wrapper">-->
<!--								--><?php //echo $blog['description'] ?>
<!--							</p>-->
<!--						</div>-->
<!--					</div>-->
<!--				</div>-->
<!--			</div>-->
		</div>
	</div>

	<div class="container-fluid" id="content">
		<div class="container">
			<div class="row">
				<div class="left col-xs-12 col-lg-8">
                    <div class="article">
                        <h1><?php echo $blog['title'] ?></h1>
                        <p class="text-wrapper">
                            <?php echo $blog['description'] ?>
                        </p>
                        <article>
                            <p>
                                <?php echo $blog['body'] ?>
                            </p>
                        </article>
                    </div>

                    <div class="row recommended">
                        <?php if ($blogs_top): ?>
                            <?php foreach ($blogs_top as $key => $value): ?>
                                <div class="item col-xs-12 col-md-6 col-lg-4">
                                    <div class="item-image">
                                        <div class="mask">
                                            <a href="<?php echo base_url('bai-viet/' . $region['slug'] . '/' . $value['province']['slug'] . '/' . $value['slug']) ?>">
                                                <img src="<?php echo base_url('assets/upload/blog/' . $value['slug'] . '/' . $value['avatar']) ?>" alt="Image Blog">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="item-content">
                                        <div class="content-header">
                                            <a href="<?php echo base_url('blog/' . $value['slug']) ?>">
                                                <h5 class="text-wrapper"><?php echo $value['title']; ?></h5>
                                            </a>
                                        </div>
                                        <!--
                                        <div class="content-body">
                                            <p class="text-wrapper">
                                                <?php echo $blog['description'] ?>
                                            </p>
                                        </div>
                                        -->
                                    </div>
                                </div>
                            <?php endforeach ?>
                        <?php endif ?>
                    </div>
				</div>

				<div class="right col-xs-12 col-lg-4">
					<div class="recommended">
						<?php if ($blogs_top): ?>
							<?php foreach ($blogs_top as $key => $value): ?>
								<div class="item">
									<div class="item-image">
										<div class="mask">
											<a href="<?php echo base_url('bai-viet/' . $region['slug'] . '/' . $value['province']['slug'] . '/' . $value['slug']) ?>">
												<img src="<?php echo base_url('assets/upload/blog/' . $value['slug'] . '/' . $value['avatar']) ?>" alt="Image Blog">
											</a>
										</div>
									</div>
									<div class="item-content">
										<div class="content-header">
											<!--<span class="badge"><?php echo $value['province']['title']; ?></span>-->
											<a href="<?php echo base_url('blog/' . $value['slug']) ?>">
												<h3 class="text-wrapper"><?php echo $value['title']; ?></h3>
											</a>
										</div>
                                        <!--
										<div class="content-body">
											<p class="text-wrapper">
												<?php echo $blog['description'] ?>
											</p>
										</div>
										-->
									</div>
								</div>
							<?php endforeach ?>
						<?php endif ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>