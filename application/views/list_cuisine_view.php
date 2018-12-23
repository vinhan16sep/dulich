<style type="text/css" media="screen">
    .row .item .mask img{
        height: 300px;
    }
    .tab-content h1 {
        text-align: center;
    }
</style>
<section id="cuisine">
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

    <div class="container-fluid" id="list-cuisine">
        <div class="container">
            <ul class="nav nav-pills nav-fill" id="pills-tab" role="tablist">
                <?php foreach ($region_full as $key => $value): ?>
                    <li class="nav-item">
                        <a class="nav-link <?php echo ($region['slug'] == $value['slug'])? 'active' : '' ?>" href="<?php echo base_url('mon-an/'.$value['slug']) ?>" r>
                            <?php echo $value['title_'.$lang].' '.$this->lang->line('ofvietnam'); ?>
                        </a>
                    </li>
                <?php endforeach ?>
            </ul>

            <div class="tab-content" id="pills-tabContent">
                <div class="tab-content" id="pills-tabContent">
                    
                    <?php foreach ($cuisine_category as $k => $val): ?>
                        <h1><?php echo $val['title_'.$lang] ?><h1/h1>
                        <div class="tab-pane fade show active">
                            <div class="row">
                                <?php foreach ($val['cuisine'] as $key => $value): ?>
                                    <div class="item col-xs-12 col-lg-6">
                                        <div class="mask">
                                            <img src="<?php echo base_url('assets/upload/cuisine/'.$value['slug'].'/'.$value['avatar']) ?>" alt="Image Destination <?php echo $i+1 ?> ">

                                            <div class="content">
                                                <h4><?php echo $value['title_'.$lang]?></h4>
                                                <p><?php echo $region['title_'.$lang].' '.$this->lang->line('ofvietnam'); ?></p>
                                            </div>
                                        </div>
                                    </div>
                                <?php endforeach ?>
                            </div>
                        </div>
                    <?php endforeach ?>
                </div>
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
