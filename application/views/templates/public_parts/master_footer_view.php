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
                    <h4>Sitemap</h4>

					<ul>
						<li>
							<a href="<?php echo base_url('diem-den') ?>">
								<?php echo $this->lang->line('menu_destinations') ?>
							</a>
						</li>
						<li>
							<a href="<?php echo base_url('am-thuc') ?>">
                                <?php echo $this->lang->line('menu_cuisine') ?>
							</a>
						</li>
						<li>
							<a href="<?php echo base_url('su-kien') ?>">
                                <?php echo $this->lang->line('menu_events') ?>
							</a>
						</li>
						<li>
							<a href="<?php echo base_url('bai-viet') ?>">
                                <?php echo $this->lang->line('menu_blogs') ?>
							</a>
						</li>
					</ul>
				</div>
				<div class="item col-xs-12 col-md-4 col-lg-3">
					<h4><?php echo $this->lang->line('footer_address') ?></h4>

					<p>HANOI HEAD OFFICE</p>
					<p>Tòa nhà VTC 23 Lạc Trung, Hai Bà Trưng, Hà Nội</p>
					<a href="tel:+024 4451 8888">+024 4451 8888</a>
					<a href="mailto:info@vietnamtravellog.vn">vietnamtravellognetviet@gmail.com</a>
				</div>
				<div class="item col-xs-12 col-md-4 col-lg-3">
					<h4><?php echo $this->lang->line('footer_partners') ?></h4>

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
			<h6>2018 SSL &copy; 2018 Copyright <a href="http://netvietgroups.com/" target="_blank" style="color: #fff">NETVIETgroup</a></h6>
			<ul>
				<li>
					<a href="https://www.facebook.com/VieVietnamtravellog/" target="_blank">
						<i class="fab fa-facebook-f"></i>
					</a>
				</li>
				<li>
					<a href="https://www.youtube.com/channel/UCGefVe0DejG_9crIWItkDlA/featured" target="_blank">
						<i class="fab fa-youtube-square"></i>
					</a>
				</li>
				<li>
					<a href="https://www.instagram.com/vietnam_travellog/" target="_blank">
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