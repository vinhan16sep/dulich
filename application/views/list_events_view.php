<section id="events">
	<div id="encypted_ppbtn_all"></div>
	<div class="main-cover">
		<div class="mask">
			<?php $image_event = ($this->uri->segment(1) == 'su-kien') ? $region['img_event'] : ''; ?>
			<img src="<?php echo base_url('assets/upload/region/'.$region['slug'].'/'.$image_event) ?>" alt="Image Cover Blog">

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
			                    <li class="nav-item <?php echo ($region['slug'] == $value['slug'])? 'active' : '' ?>">
			                        <a class="" href="<?php echo base_url('su-kien/'.$value['slug']) ?>" r>
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

    <div class="container-fluid" id="list-events">
		<div class="container">
			<div class="grid">
				<div class="grid-sizer"></div>
				<?php foreach ($events as $key => $value): ?>
					<div class="grid-item <?php if( ($key+1 == 1) || ($key+1 == 4) || ($key+1 == 5) || ($key+1 == 8) ) { ?> grid-item-2 <?php } ?>">
						<a href="<?php echo base_url('events/'.$value['slug']) ?>">
							<div class="inner">
								<div class="mask">
									<img src="<?php echo base_url('assets/upload/events/'.$value['slug'].'/'.$value['image']) ?>" alt="Image Province">

									<div class="title">
										<span class="badge"><?php echo $value['province_title'] ?></span>
										<h2><?php echo $value['title'] ?></h2>
										<p class="text-wrapper">
											<?php echo $value['description'] ?>
										</p>
										<h6><?= (date_format(date_create($value['date_start']),"d M Y") == date_format(date_create($value['date_end']),"d M Y")) ? date_format(date_create($value['date_start']),"d M Y") : date_format(date_create($value['date_start']),"d M Y").' - '.date_format(date_create($value['date_end']),"d M Y") ?></h6>
									</div>
								</div>
							</div>
						</a>
					</div>
				<?php endforeach ?>
			</div>
			<div class = "clearfix"></div>
			<div class="see-more">
				<button class="btn btn-primary" type="button" id="limit">
					<?php echo $this->lang->line('btn_see_more') ?> <i class="fas fa-angle-double-right"></i>
				</button>
				<input id="start" type="hidden" value="8" name="">
				<input id="slug_region" type="hidden" value="<?php echo $region['slug'] ?>" name="">
			</div>
		</div>
    </div>
</section>

<!-- Mansory Layout js -->
<script src="<?php echo site_url('assets/js/masonry.pkgd.min.js') ?>"></script>
<!-- imagedLoaded js -->
<script src="https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.min.js"></script>

<script>
    //init Masonry

    $('a[data-toggle=pill]').each(function (){
        var $this = $(this);

        $this.on('shown.bs.tab', function () {
            var $grid = $('.grid').masonry({
                // set itemSelector so .grid-sizer is not used in layout
                itemSelector: '.grid-item',
                // use element for option
                columnWidth: '.grid-sizer',
                percentPosition: true
            });
            // layout Masonry after each image loads
            $grid.imagesLoaded().progress( function() {
                $grid.masonry('layout');
            });
        });
    });
</script>
<script type="text/javascript">
	html_modal = `<div class="modal" role="dialog" style="display: block; opacity: 0.5">
        <div class="modal-dialog" style="color:#fff; text-align:center; padding-top:300px;">
            <i class="fa fa-2x fa-spinner fa-spin" aria-hidden="true"></i>
        </div>
    </div>`;
    HOSTNAME = 'http://localhost/dulich/';
	var limit = Number($('#start').val());
    var start = 0;
    var slug = $('#slug_region').val();
    $("#limit").click(function(){
      start+= limit;
      $('#start').val(start);
      $.ajax({
        method: "get",
        url: HOSTNAME+'events/ajax_event',
        data: {
          slug: slug, start: start, limit:limit
        },
        beforeSend:function() {
            document.getElementById('encypted_ppbtn_all').innerHTML = html_modal;
        },
        success: function(response){

        	console.log(response);
        	if(!response.reponse.check){
        		$('.see-more').hide(200);
        	}else{
        		console.log(2);
        	}
        	result = '';
            for (var i = 0; i < response.reponse.events.length; i++) {
            	date = new Date(response.reponse.events[i]["date_start"]);
            	console.log(i+1);
	            result += `
		            <div class="grid-item ${( (i+1 == 1) || (i+1 == 4) || (i+1 == 5) || (i+1 == 8) ) ? 'grid-item-2' : '' }">
						<a href="${HOSTNAME}events/${response.reponse.events[i]['slug']}">
							<div class="inner">
								<div class="mask">
									<img src="${HOSTNAME}assets/upload/events/${response.reponse.events[i]['slug']}/${response.reponse.events[i]['image']}" alt="Image Province">
									<div class="title">
										<span class="badge">${response.reponse.events[i]['province_title_'+response.reponse.lang]}</span>
										<h2>${response.reponse.events[i]['title_'+response.reponse.lang]}</h2>
										<p class="text-wrapper">
											${response.reponse.events[i]['description_'+response.reponse.lang]}
										</p>
										<h6>${response.reponse.events[i]['date']}</h6>
									</div>
								</div>
							</div>
						</a>
					</div>
	              `;
            }
            $(".container .grid").append(result);
            document.getElementById('encypted_ppbtn_all').innerHTML = '';
        },
        error: function(jqXHR, exception){
            console.log(errorHandle(jqXHR, exception));
            if(jqXHR.status == 404 && jqXHR.responseJSON.message != 'undefined'){
                location.reload();
            }
        }
      });
    }); 
</script>