<section id="detail-blog" class="detail-post">
	<div class="main-cover">
		<div class="mask">
			<img src="<?php echo base_url('assets/upload/blog/' . $blog['slug'] . '/' . $blog['avatar']) ?>" alt="Image Cover Blog">

			<div class="content">
				<div class="container">
					<div class="row">
						<div class="item col-xs-12 col-lg-6">
							<h1><?php echo $blog['title_' . $lang] ?></h1>
							<p class="text-wrapper">
								<?php echo $blog['description_' . $lang] ?>
							</p>
						</div>
					</div>

					<div class="link-control">
						<ul>
							<?php if ($region_all): ?>
								<?php foreach ($region_all as $key => $value): ?>
									<li class="<?php echo ($this->uri->segment(2) == $value['slug'])? 'active' : '' ?>">
										<a href="<?php echo base_url('bai-viet/' . $value['slug']) ?>">
											<?php echo $value['title_' . $lang] ?>
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

	<div class="container-fluid" id="content">
		<div class="container">
			<div class="row">
				<div class="left col-xs-12 col-lg-8">
					<div>
						<!--
                        <strong>Time: <?= (date_format(date_create($detail['date_start']),"d M Y") == date_format(date_create($detail['date_end']),"d M Y")) ? date_format(date_create($detail['date_start']),"d M Y") : date_format(date_create($detail['date_start']),"d M Y").' - '.date_format(date_create($detail['date_end']),"d M Y") ?></strong>
                        -->
					</div>
					<article>
						<p>
							<?php echo $blog['body_' . $lang] ?>
						</p>
					</article>
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
											<span class="badge"><?php echo $value['province']['title_' . $lang]; ?></span>
											<a href="<?php echo base_url('bai-viet/' . $region['slug'] . '/' . $value['province']['slug'] . '/' . $value['slug']) ?>">
												<h3 class="text-wrapper"><?php echo $value['title_' . $lang]; ?></h3>
											</a>
											<ul>
												<li><i class="fa fa-star" aria-hidden="true" style="color: #F0EA39"></i><i class="fa fa-star" aria-hidden="true" style="color: #F0EA39"></i><i class="fa fa-star" aria-hidden="true" style="color: #F0EA39"></i><i class="fa fa-star" aria-hidden="true" style="color: #F0EA39"></i><i class="fa fa-star" aria-hidden="true" style="color: #F0EA39"></i></li>

												<li><h6><?php echo date("d-m-Y", strtotime($value['updated_at'])); ?></h6></li>
											</ul>
										</div>
										<div class="content-body">
											<p class="text-wrapper">
												<?php echo $blog['description_' . $lang] ?>
											</p>
										</div>
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