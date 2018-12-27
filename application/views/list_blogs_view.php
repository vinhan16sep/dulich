<section id="blogs">
	<div class="main-cover">
		<div class="mask">
			<img src="<?php echo base_url('assets/upload/region/' . $region_detail['slug'] . '/' . $region_detail['avatar']) ?>" alt="Image banner <?php echo $region_detail['slug'] ?>">

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
										<a href="<?php echo base_url('bai-viet/' . $value['slug']) ?>">
											<?php echo $value['title'] ?>
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

	<div class="container-fluid" id="list-blogs">
		<div class="container">
			<div class="row">
				<div class="left col-xs-12 col-lg-8">
					<?php if ($blogs): ?>
						<?php foreach ($blogs as $key => $value): ?>
							<div class="item">
								<div class="item-image">
									<div class="mask">
										<img src="<?php echo base_url('assets/upload/blog/' . $value['slug'] . '/' . $value['avatar']) ?>" alt="Image Blog <?php echo $value['slug'] ?>">
									</div>
								</div>
								<div class="item-content">
									<div class="content-header">
										<span class="badge"><?php echo $value['province']['title']; ?></span>
										<a href="<?php echo base_url('bai-viet/' . $region_detail['slug'] . '/' . $value['province']['slug'] . '/' . $value['slug']) ?>">
											<h3><?php echo $value['title']; ?></h3>
										</a>
										<h6><?php echo $value['author']; ?> | <small><?php echo $value['nationality']; ?></small></h6>
										<ul>
											<li><i class="fa fa-star" aria-hidden="true" style="color: #F0EA39"></i><i class="fa fa-star" aria-hidden="true" style="color: #F0EA39"></i><i class="fa fa-star" aria-hidden="true" style="color: #F0EA39"></i><i class="fa fa-star" aria-hidden="true" style="color: #F0EA39"></i><i class="fa fa-star" aria-hidden="true" style="color: #F0EA39"></i></li>

											<li><?php echo date("d-m-Y", strtotime($value['updated_at'])); ?></li>
										</ul>
									</div>
									<div class="content-body">
										<p class="text-wrapper">
											<?php echo $value['description'] ?>
										</p>
									</div>
									<div class="content-footer">
										<a href="<?php echo base_url('bai-viet/' . $region_detail['slug'] . '/' . $value['province']['slug'] . '/' . $value['slug']) ?>" class="btn btn-primary" role="button">
											View Detail
										</a>
									</div>
								</div>
							</div>
						<?php endforeach ?>
					<?php else: ?>
							Chưa có bài viết
					<?php endif ?>

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
						<?php if ($blogs_top): ?>
							<?php foreach ($blogs_top as $key => $value): ?>
								<div class="item">
									<div class="item-image">
										<div class="mask">
											<img src="<?php echo base_url('assets/upload/blog/' . $value['slug'] . '/' . $value['avatar']) ?>" alt="Image Blog <?php echo $value['slug'] ?>">
										</div>
									</div>
									<div class="item-content">
										<div class="content-header">
											<span class="badge"><?php echo $value['province']['title']; ?></span>
											<a href="<?php echo base_url('bai-viet/' . $region_detail['slug'] . '/' . $value['province']['slug'] . '/' . $value['slug']) ?>">
												<h3><?php echo $value['title']; ?></h3>
											</a>
											<h6><?php echo $value['author']; ?> | <small><?php echo $value['nationality']; ?></small></h6>
											<ul>
												<li><i class="fa fa-star" aria-hidden="true" style="color: #F0EA39"></i><i class="fa fa-star" aria-hidden="true" style="color: #F0EA39"></i><i class="fa fa-star" aria-hidden="true" style="color: #F0EA39"></i><i class="fa fa-star" aria-hidden="true" style="color: #F0EA39"></i><i class="fa fa-star" aria-hidden="true" style="color: #F0EA39"></i></li>

												<li><?php echo date("d-m-Y", strtotime($value['updated_at'])); ?></li>
											</ul>
										</div>
										<div class="content-body">
											<p class="text-wrapper">
												<?php echo $value['description'] ?>
											</p>
										</div>
										<div class="content-footer">
											<a href="<?php echo base_url('bai-viet/' . $region_detail['slug'] . '/' . $value['province']['slug'] . '/' . $value['slug']) ?>" class="btn btn-primary" role="button">
												View Detail
											</a>
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