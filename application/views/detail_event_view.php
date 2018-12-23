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
							Nullam molestie nisi sed neque porta porttitor. Aliquam tristique lacus non purus elementum tincidunt. Nunc lectus diam, hendrerit sed felis a, rhoncus dignissim ex. Curabitur hendrerit mattis odio, a vestibulum lacus pharetra eu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Curabitur eu viverra tellus, vitae fringilla urna. Mauris congue ut nulla eu ornare. Donec ullamcorper, tellus a tempor dignissim, odio velit imperdiet est, vel tempus augue nisl sed neque. Ut vitae dui id nisi semper elementum. Morbi tempor lectus eu tortor consectetur euismod. In aliquet consectetur nisl, at fermentum libero rhoncus sit amet. Etiam in neque non erat ultrices blandit. Ut rutrum dui enim, at rhoncus purus mattis at. Aliquam imperdiet vitae felis egestas ullamcorper. Maecenas hendrerit libero ut lorem viverra mollis.
						</p>

						<img src="https://images.unsplash.com/photo-1545502648-e079208cf734?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80" alt="Image of Post">
                    </article>
                </div>

                <div class="right col-xs-12 col-lg-4">
                    <div class="recommended">
<!--                        --><?php //foreach ($get_related as $key => $value): ?>
<!--                            -->
<!--                            <div class="item">-->
<!--                                <div class="item-image">-->
<!--                                    <div class="mask">-->
<!--										<img src="https://images.unsplash.com/photo-1545502648-e079208cf734?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80" alt="Image Blog">-->
<!--                                    </div>-->
<!--                                </div>-->
<!--                                <div class="item-content">-->
<!--                                    <div class="content-header">-->
<!--										<span class="badge">Province</span>-->
<!--                                        <a href="--><?php //echo base_url('su-kien/'.$value['slug']) ?><!--">-->
<!--                                            <h3>--><?//= $value['title_vi'] ?><!--</h3>-->
<!--                                        </a>-->
<!--                                        <h6>Time | <small> --><?//= (date_format(date_create($value['date_start']),"d M Y") == date_format(date_create($value['date_end']),"d M Y")) ? date_format(date_create($value['date_start']),"d M Y") : date_format(date_create($value['date_start']),"d M Y").' - '.date_format(date_create($value['date_end']),"d M Y") ?><!--</small></h6>-->
<!--                                        <ul>-->
<!--                                            <li>Rating</li>-->
<!---->
<!--                                            <li>Created Date</li>-->
<!--                                        </ul>-->
<!--                                    </div>-->
<!--                                    <div class="content-body">-->
<!--                                        <p class="text-wrapper">-->
<!--                                            --><?//= $value['description_vi'] ?>
<!--                                        </p>-->
<!--                                    </div>-->
<!--                                    <div class="content-footer">-->
<!--                                        <a href="--><?php //echo base_url('su-kien/'.$value['slug']) ?><!--" class="btn btn-primary" role="button">-->
<!--                                            View Detail-->
<!--                                        </a>-->
<!--                                    </div>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        --><?php //endforeach ?>
						<!-- hungluong commented above -->

						<?php for ($i = 0; $i < 3; $i++) { ?>
							<div class="item">
								<div class="item-image">
									<div class="mask">
										<a href="<?php echo base_url('events/detail') ?>">
											<img src="https://images.unsplash.com/photo-1545502648-e079208cf734?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80" alt="Image Blog">
										</a>
									</div>
								</div>
								<div class="item-content">
									<div class="content-header">
										<span class="badge">Province</span>
										<a href="<?php echo base_url('events/detail') ?>">
											<h3 class="text-wrapper">Event Title</h3>
										</a>
										<ul>
											<li>Rating</li>

											<li><h6>Date</h6></li>
										</ul>
									</div>
									<div class="content-body">
										<p class="text-wrapper">
											Nulla ante orci, condimentum non justo at, aliquam viverra risus. Fusce eget ante luctus, suscipit lectus sed, ultrices ligula. Cras augue eros, ullamcorper eu mollis placerat, dignissim vel nibh. Ut eget rhoncus metus. Ut congue tincidunt diam ac tincidunt. Vivamus malesuada eros at nunc sodales viverra. Proin id purus sit amet dui maximus pellentesque et ut lacus.
										</p>
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