<section id="destinations">
    <div id="slide" class="carousel slide carousel-fade" data-ride="carousel">
        <div class="carousel-inner">
            <?php for ($i = 0; $i < 3; $i++) { ?>
                <div class="carousel-item <?php echo ($i == 0)? 'active' : '' ?>">
                    <div class="mask">
                        <img src="https://images.unsplash.com/photo-1544842413-05944bc01da2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80" alt="Image slide">
                    </div>
                    <div class="carousel-caption">
                        <div class="row">
                            <div class="item col-xs-12 col-lg-4">
                                <h3>Title Comes Here</h3>
                                <h6 class="text-wrapper">Description</h6>
                            </div>
                            <div class="item col-xs-12 col-lg-4">
                                <p class="text-wrapper">
                                    Donec pellentesque libero ac varius lobortis. Cras placerat imperdiet urna, in posuere urna elementum in. Ut commodo lectus diam, a volutpat elit iaculis eget. Nunc varius nec ex eu volutpat. Morbi fermentum metus quis quam posuere vehicula. Mauris consectetur arcu nulla, sed cursus arcu auctor et. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
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

    <div class="container-fluid" id="list-destinations">
        <div class="container">
            <ul class="nav nav-pills nav-fill" id="pills-tab" role="tablist">
                <?php for ($j = 0; $j < 3; $j++) { ?>
                    <li class="nav-item">
                        <a class="nav-link <?php echo ($j == 0)? 'active' : '' ?>" id="pills-region-<?php echo $j+1 ?>-tab" data-toggle="pill" href="#pills-region-<?php echo $j+1 ?>" role="tab" aria-controls="pills-<?php echo $j+1 ?>" aria-selected="true">
                            Region <?php echo $j+1 ?> of Vietnam
                        </a>
                    </li>
                <?php } ?>
            </ul>

            <div class="tab-content" id="pills-tabContent">
                <?php for ($j = 0; $j < 3; $j++) { ?>
                    <div class="tab-pane fade show <?php echo ($j == 0)? 'active' : '' ?>" id="pills-region-<?php echo $j+1 ?>" role="tabpanel" aria-labelledby="pills-region-<?php echo $j+1 ?>-tab">
                        <div class="row">
                            <?php for ($i = 0; $i < 6; $i++) { ?>
                                <div class="item col-xs-12 col-lg-6">
                                    <div class="mask">
                                        <img src="https://images.unsplash.com/photo-1528127269322-539801943592?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80" alt="Image Destination <?php echo $i+1 ?> ">

                                        <div class="content">
                                            <h2>Province</h2>
                                            <h6>Province Title</h6>
                                        </div>
                                    </div>

                                    <div class="content">
                                        <ul>
                                            <?php for ($k = 0; $k < 6; $k++) { ?>
                                                <li>
                                                    <a href="<?php echo base_url('destinations/detail') ?>">
                                                        Location of this Province
                                                    </a>
                                                </li>
                                            <?php } ?>
                                        </ul>

                                        <div class="item-footer">
                                            <a href="<?php echo base_url('destinations/detail') ?>" class="btn btn-primary" role="button">
                                                See More
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            <?php } ?>
                        </div>
                    </div>
                <?php } ?>
            </div>

            <div class="see-more">
                <button class="btn btn-default" type="button">
                    See more <i class="fas fa-angle-double-right"></i>
                </button>
            </div>
        </div>
    </div>
</section>