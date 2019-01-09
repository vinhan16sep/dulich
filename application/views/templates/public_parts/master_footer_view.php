<footer>
	<div class="footer-top">
		<div class="footer-bg"></div>
		<div class="container">
			<div class="row">
				<div class="item col-xs-12 col-md-12 col-lg-3">
					<a href="<?php base_url('') ?>">
						<img src="<?php echo site_url('assets/img/logo-w.png') ?>" alt="Logo Vietnam Travellog">
					</a>
				</div>
				<div class="item col-xs-12 col-md-4 col-lg-3">
					<h4>About Us</h4>

					<ul>
						<li>
							<a href="<?php echo base_url('ve-chung-toi') ?>">
								Who we are
							</a>
						</li>
						<li>
							<a href="<?php echo base_url('ve-chung-toi') ?>">
								Core Values
							</a>
						</li>
						<li>
							<a href="<?php echo base_url('ve-chung-toi') ?>">
								Our Services
							</a>
						</li>
						<li>
							<a href="<?php echo base_url('ve-chung-toi') ?>">
								Meet our Team
							</a>
						</li>
					</ul>
				</div>
				<div class="item col-xs-12 col-md-4 col-lg-3">
					<h4>Our Address</h4>

					<p>HANOI HEAD OFFICE</p>
					<p>Zone 3, Viet Hung, Dong Anh, Hanoi</p>
					<a href="tel:+84 123 456 789">+84 123 456 789</a>
					<a href="mailto:info@vietnamtravellog.vn">info@vietnamtravellog.vn</a>
				</div>
				<div class="item col-xs-12 col-md-4 col-lg-3">
					<h4>Our Partners</h4>

					<div class="row">
						<?php for($i = 0; $i < 8; $i++) { ?>
							<div class="item col-6 col-lg-4">
								<div class="mask">
									<img src="<?php echo site_url('assets/img/logo-w.png')?>" alt="Logo of ">
								</div>
							</div>
						<?php } ?>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer-bottom">
		<div class="container">
			<h6>2018 SSL &copy; 2018 Copyright Brand</h6>
			<ul>
				<li>
					<a href="#" target="_blank">
						<i class="fab fa-facebook-f"></i>
					</a>
				</li>
				<li>
					<a href="#" target="_blank">
						<i class="fab fa-youtube-square"></i>
					</a>
				</li>
				<li>
					<a href="#" target="_blank">
						<i class="fab fa-google-plus"></i>
					</a>
				</li>
				<li>
					<a href="#" target="_blank">
						<i class="fab fa-skype"></i>
					</a>
				</li>
				<li>
					<a href="#" target="_blank">
						<i class="fab fa-instagram"></i>
					</a>
				</li>
			</ul>
		</div>
	</div>

</footer>


<!-- jQuery -->

<!-- Script -->
<script src="<?php echo site_url('assets/js/') ?>script.min.js"></script>

<!-- Cart -->
<script src="<?php echo site_url('assets/js/') ?>cart.js"></script>
<script>
    var url = window.location.protocol + '//' + window.location.hostname;

    $(".change-language").click(function(){
        $.ajax({
            method: "GET",
            url: "<?php echo base_url(); ?>homepage/change_language",
            data: {
                lang: $(this).data('language')
            },
            async:false,
            success: function(res){
                if(res.message == 'changed'){
                    window.location.reload();
                }
            },
            error: function(){

            }
        });
    });
</script>

</body>
</html>