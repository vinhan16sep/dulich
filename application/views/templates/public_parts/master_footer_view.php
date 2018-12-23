<footer>
	<div class="footer-top">
		<div class="footer-bg"></div>
		<div class="container">
			<div class="row">
				<div class="item col-xs-12 col-lg-3">
					<a href="<?php base_url('') ?>">
						<img src="<?php echo site_url('assets/img/logo-w.png') ?>" alt="Logo Vietnam Travellog">
					</a>
				</div>
				<div class="item col-xs-12 col-lg-3">
					<h4>About Us</h4>

					<ul>
						<li>
							<a href="<?php base_url('') ?>">
								Who we are
							</a>
						</li>
						<li>
							<a href="<?php base_url('') ?>">
								Core Values
							</a>
						</li>
						<li>
							<a href="<?php base_url('') ?>">
								Our Services
							</a>
						</li>
						<li>
							<a href="<?php base_url('') ?>">
								Meet our Team
							</a>
						</li>
					</ul>
				</div>
				<div class="item col-xs-12 col-lg-3">
					<h4>Our Partners</h4>

					<ul>
						<li>
							<a href="<?php base_url('') ?>">
								Who we are
							</a>
						</li>
						<li>
							<a href="<?php base_url('') ?>">
								Core Values
							</a>
						</li>
						<li>
							<a href="<?php base_url('') ?>">
								Our Services
							</a>
						</li>
						<li>
							<a href="<?php base_url('') ?>">
								Meet our Team
							</a>
						</li>
					</ul>
				</div>
				<div class="item col-xs-12 col-lg-3">
					<h4>Our Address</h4>

					<p>HANOI HEAD OFFICE</p>
					<p>Zone 3, Viet Hung, Dong Anh, Hanoi</p>
					<a href="tel:+84 123 456 789">+84 123 456 789</a>
					<a href="mailto:info@vietnamtravellog.vn">info@vietnamtravellog.vn</a>
				</div>
			</div>
		</div>
	</div>
	<div class="footer-bottom">
		<div class="container">
			<h6>2018 SSL</h6>
			<h6>&copy; 2018 Copyrights Brand</h6>
		</div>
	</div>

</footer>


<!-- jQuery -->

<!-- Script -->
<script src="<?php echo site_url('assets/js/') ?>script.js"></script>

<!-- Cart -->
<script src="<?php echo site_url('assets/js/') ?>cart.js"></script>
<script>
    var url = window.location.protocol + '//' + window.location.hostname;
    var cart = localStorage.getItem('cart') ? JSON.parse(localStorage.getItem('cart')) : [];
    $(document).ready(function(){
        $.ajax({
            method: "get",
            url: url + '/soundon/checkout',
            data: {
                cart: JSON.stringify(cart)
            },
            success: function(response){
            	console.log(response);
            },
            error: function(jqXHR, exception){
            }
        });
    })
    function login(){
    	return false;
    }
</script>

</body>
</html>