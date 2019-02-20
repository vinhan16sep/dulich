<section id="detail-event" class="detail-post">
	<div class="main-cover">
		<div class="mask">
			<img src="<?php echo base_url('assets/upload/region/'.$region['slug'].'/'.$region['avatar']) ?>" alt="Image Cover Blog">

			<div class="content">
				<div class="container">
					<div class="row">
						<div class="item col-xs-12 col-lg-6">
							<h1><?php echo $events['title'];?></h1>
							<p class="text-wrapper">
								<?php echo $events['description'];?>
							</p>
						</div>
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
						<!--
                        <?= $detail['body_vi'] ?>
                        -->

						<p>
							<?php echo $events['body'] ?>
						</p>

						<img src="<?php echo base_url('assets/upload/events/'.$events['slug'].'/'.$events['image']) ?>" alt="Image of Post">
                    </article>
                </div>

                <div class="right col-xs-12 col-lg-4">
                    <div class="recommended">
                    	<?php foreach ($get_related as $key => $value): ?>
							<div class="item">
								<div class="item-image">
									<div class="mask">
										<a href="<?php echo base_url('events/'.$value['slug']) ?>">
											<img src="<?php echo base_url('assets/upload/events/'.$value['slug'].'/'.$value['image']) ?>" alt="Image Blog">
										</a>
									</div>
								</div>
								<div class="item-content">
									<div class="content-header">
										<span class="badge"><?php echo $value['province_title'] ?></span>
										<a href="<?php echo base_url('events/'.$value['slug']) ?>">
											<h3 class="text-wrapper"><?php echo $value['title'] ?></h3>
										</a>
										<ul>
											<li><?php echo $this->lang->line('post_rating') ?></li>

											<li><h6><?= (date_format(date_create($value['date_start']),"d M Y") == date_format(date_create($value['date_end']),"d M Y")) ? date_format(date_create($value['date_start']),"d M Y") : date_format(date_create($value['date_start']),"d M Y").' - '.date_format(date_create($value['date_end']),"d M Y") ?></h6></li>
										</ul>
									</div>
									<div class="content-body">
										<p class="text-wrapper">
											<?php echo $value['description'] ?>
										</p>
									</div>
								</div>
							</div>
                    	<?php endforeach ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>