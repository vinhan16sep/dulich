<style type="text/css" media="screen">
    .row .item .mask img{
        height: 300px;
    }
    .tab-content h1 {
        text-align: center;
    }
</style>
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
                                <h3><?php echo $region['title_'.$lang];?></h3>
                            </div>
                            <div class="item col-xs-12 col-lg-4">
                                <p class="text-wrapper">
                                    <?php echo $region['description_'.$lang];?>
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
                            <?php foreach ($region_full as $key => $value): ?>
								<li class="<?php echo ($region['slug'] == $value['slug'])? 'active' : '' ?>">
									<a href="<?php echo base_url('mon-an/'.$value['slug']) ?>">
                                        <?php echo $value['title_'.$lang].' '.$this->lang->line('ofvietnam'); ?>
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
						<h2><?php echo $val['title_'.$lang] ?></h2>
					</div>
					<div class="row">
                        <?php foreach ($val['cuisine'] as $key => $value): ?>
							<div class="item col-xs-12 col-lg-6">
								<div class="inner">
									<div class="mask">
										<a href="<?php echo base_url('cuisine/detail') ?>">
											<img src="<?php echo base_url('assets/upload/cuisine/'.$value['slug'].'/'.$value['avatar']) ?>" alt="Image Cuisine Post">

											<div class="badge">
												Region of Vietnam
											</div>

											<div class="content">
												<h3><?php echo $value['title_'.$lang]?></h3>
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
