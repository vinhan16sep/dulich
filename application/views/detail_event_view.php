<section id="detail-event" class="detail-post">
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
							<?php echo $events['body_'.$lang] ?>
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
										<a href="<?php echo base_url('events/detail') ?>">
											<img src="<?php echo base_url('assets/upload/events/'.$value['slug'].'/'.$value['image']) ?>" alt="Image Blog">
										</a>
									</div>
								</div>
								<div class="item-content">
									<div class="content-header">
										<span class="badge"><?php echo $value['province_title_'.$lang] ?></span>
										<a href="<?php echo base_url('events/detail') ?>">
											<h3 class="text-wrapper"><?php echo $value['title_'.$lang] ?></h3>
										</a>
										<ul>
											<li>Rating</li>

											<li><h6><?= (date_format(date_create($value['date_start']),"d M Y") == date_format(date_create($value['date_end']),"d M Y")) ? date_format(date_create($value['date_start']),"d M Y") : date_format(date_create($value['date_start']),"d M Y").' - '.date_format(date_create($value['date_end']),"d M Y") ?></h6></li>
										</ul>
									</div>
									<div class="content-body">
										<p class="text-wrapper">
											<?php echo $value['description_'.$lang] ?>
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