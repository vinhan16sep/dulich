<section id="contact">
	<div class="cover">
		<div class="mask">
			<img src="https://images.unsplash.com/photo-1512428559087-560fa5ceab42?ixlib=rb-0.3.5&s=9a1e1f50fda7780e29a15314937a753e&auto=format&fit=crop&w=1350&q=80" alt="image contact cover">

			<div class="overlay"></div>

			<div class="container">
				<div class="row">
					<div class="left col-xs-12 col-lg-6">
						<h2>Contact Detail</h2>

						<div class="info">
							<h6>Address</h6>
							<p>Zone 3, Viet Hung, Dong Anh, Hanoi</p>
						</div>

						<div class="info">
							<h6>Hotline</h6>
							<a href="tel:+84 1234 5678">
								+84 1234 5678
							</a>
						</div>

						<div class="info">
							<h6>Email</h6>
							<a href="tel:+84 1234 5678">
								info@vietnamtrallog.com
							</a>
						</div>

					</div>

					<div class="right col-xs-12 col-lg-6">
						<div class="inner">
							<h2>Contact Us</h2>
							<p>Quisque eget odio at metus posuere accumsan. Donec eu dignissim magna. Fusce eget consectetur velit. In id purus dolor. Morbi quis ultrices diam, ac luctus eros. Quisque tincidunt velit sed metus finibus faucibus. Donec molestie ligula semper, vestibulum purus id, ornare elit. Suspendisse in fermentum nisi, ac consectetur arcu.</p>

                            <?php
                            	echo form_open_multipart('', array('class' => 'form-horizontal'));
                            ?>

							<div class="row">
								<div class="form-group col-xs-12 col-lg-4">
									<?php
									echo form_error('contact_name', '<div class="error">', '</div>');
									echo form_input('contact_name', set_value('contact_name'), 'class="form-control" id="contact_name" placeholder="Fullname"');
									?>
								</div>

								<div class="form-group col-xs-12 col-lg-8">
									<?php
									echo form_error('contact_mail', '<div class="error">', '</div>');
									echo form_input('contact_mail', set_value('contact_mail'), 'class="form-control" id="contact_mail" placeholder="Email"');
									?>
								</div>

								<div class="form-group col-xs-12 col-lg-12">
									<?php
									echo form_error('contact_subject', '<div class="error">', '</div>');
									echo form_input('contact_subject', set_value('contact_subject'), 'class="form-control" id="contact_subject" placeholder="Subject"');
									?>
								</div>

								<div class="form-group col-xs-12 col-lg-12">
                                    <?php
                                    echo form_error('contact_message');
                                    //echo form_textarea('contact_message', set_value('contact_message'), 'class="form-control" id="contact_message" placeholder="Message..."');
									echo '<textarea class="form-control" placeholder="Message..." id="contact_message" rows="3"></textarea>';
                                    ?>
								</div>

								<div class="form-group col-xs-12 col-lg-12">
									<?php echo form_submit('submit', 'Send', 'class="btn btn-primary"'); ?>
								</div>
							</div>
                            <?php echo form_close(); ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>