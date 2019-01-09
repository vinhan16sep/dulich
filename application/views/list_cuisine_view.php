<section id="cuisine">
	<!--
    <div id="slide" class="carousel slide carousel-fade" data-ride="carousel">
        <div class="carousel-inner">
            <?php for ($i = 0; $i < 3; $i++) { ?>
                <div class="carousel-item <?php echo ($i == 0)? 'active' : '' ?>">
                    <div class="mask">
                        <img src="<?php echo base_url('assets/upload/region/'.$region['slug'].'/'.$region['avatar']) ?>" alt="Image slide">
                    </div>
                    <div class="carousel-caption">
                        <div class="row">
                            <div class="item col-xs-12 col-lg-4">
                                <h3><?php echo $region['title'];?></h3>
                            </div>
                            <div class="item col-xs-12 col-lg-4">
                                <p class="text-wrapper">
                                    <?php echo $region['description'];?>
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
    -->

	<div class="main-cover">
		<div class="mask">
			<img src="<?php echo base_url('assets/upload/region/'.$region['slug'].'/'.$region['avatar']) ?>" alt="Image Cover Blog">

			<div class="content">
				<div class="container">
					<div class="row">
						<div class="item col-xs-12 col-lg-6">
							<h1><?php echo $region['title'];?></h1>
							<p class="text-wrapper">
								<?php echo $region['description'];?>
							</p>
						</div>
					</div>

					<div class="link-control">
						<ul>
                            <?php foreach ($region_full as $key => $value): ?>
								<li class="<?php echo ($region['slug'] == $value['slug'])? 'active' : '' ?>">
									<a href="<?php echo base_url('mon-an/'.$value['slug']) ?>">
                                        <?php echo $value['title'].' '.$this->lang->line('ofvietnam'); ?>
									</a>
								</li>
                            <?php endforeach ?>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

    <div class="container-fluid" id="list-cuisine">
        <?php foreach ($cuisine_category as $k => $val): ?>
			<div class="container-fluid cuisine-style">
				<div class="background-image mask">
					<img src="https://images.unsplash.com/photo-1503764654157-72d979d9af2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1506&q=80" alt="Cuisine style background">
				</div>
				<div class="container">
					<div class="heading">
						<h2><?php echo $val['title'] ?></h2>
					</div>
					<div class="row">
                        <?php foreach ($val['cuisine'] as $key => $value): ?>
							<div class="item col-xs-12 col-lg-6">
								<div class="inner">
									<div class="mask">
										<a href="<?php echo base_url('mon-an/'.$region['slug'].'/'.$val['slug'].'/'.$value['slug']) ?>">
											<img src="<?php echo base_url('assets/upload/cuisine/'.$value['slug'].'/'.$value['avatar']) ?>" alt="Image Cuisine Post">

											<div class="badge">
												<?php echo $region['title'].' '.$this->lang->line('ofvietnam'); ?>
											</div>

											<div class="content">
												<h3><?php echo $value['title']?></h3>
											</div>
										</a>
									</div>
								</div>
							</div>
						<?php endforeach ?>
					</div>
				</div>
			</div>
		<?php endforeach ?>
    </div>
</section>
