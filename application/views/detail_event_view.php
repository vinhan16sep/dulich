<section id="detail-event" class="detail-post">
	<div class="main-cover">
		<div class="mask">
			<img src="<?php echo base_url('assets/upload/region/'.$region['slug'].'/'.$region['avatar']) ?>" alt="Image Cover Blog">

<!--			<div class="content">-->
<!--				<div class="container">-->
<!--					<div class="row">-->
<!--						<div class="item col-xs-12 col-lg-6">-->
<!--							<h1>--><?php //echo $events['title'];?><!--</h1>-->
<!--							<p class="text-wrapper">-->
<!--								--><?php //echo $events['description'];?>
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
                        <h1><?php echo $events['title'];?></h1>
                        <p class="text-wrapper">
                            <?php echo $events['description'];?>
                        </p>
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

                    <div class="row recommended">
                        <?php foreach ($get_related as $key => $value): ?>
                            <div class="item col-xs-12 col-md-6 col-lg-4">
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
                                            <h5 class="text-wrapper"><?php echo $value['title'] ?></h5>
                                        </a>
                                    </div>
                                    <!--
                                    <div class="content-body">
                                        <p class="text-wrapper">
                                            <?php echo $value['description'] ?>
                                        </p>
                                    </div>
                                    -->
                                </div>
                            </div>
                        <?php endforeach ?>
                    </div>
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
									</div>
                                    <!--
									<div class="content-body">
										<p class="text-wrapper">
											<?php echo $value['description'] ?>
										</p>
									</div>
									-->
								</div>
							</div>
                    	<?php endforeach ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>