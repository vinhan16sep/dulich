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
                <?php foreach ($region as $key => $value): ?>
                    <li class="nav-item">
                        <a class="nav-link <?= ($key == 0)? 'active' : '' ?>" id="pills-region-<?= $value['id'] ?>-tab" data-toggle="pill" href="#pills-region-<?= $value['id'] ?>" role="tab" aria-controls="pills-<?= $value['id'] ?>" aria-selected="true">
                            <?= $value['title_vi'] ?>
                        </a>
                    </li>
                <?php endforeach ?>
            </ul>

            <div class="tab-content" id="pills-tabContent">
                <?php if ($region): ?>
                    <?php foreach ($region as $i => $item): ?>
                        <div class="tab-pane fade show <?= ($i == 0)? 'active' : '' ?>" id="pills-region-<?= $item['id'] ?>" role="tabpanel" aria-labelledby="pills-region-<?= $item['id'] ?>-tab">
                            <div class="row">
                            <?php if ($province): ?>
                                <?php foreach ($province as $key => $value): ?>
                                    <?php if ($value['region_id'] == $item['id']): ?>
                                        <div class="item col-xs-12 col-lg-6">
                                            <div class="mask">
                                                <img src="<?= base_url('assets/upload/province/') . $value['slug'] .'/'. $value['avatar'] ?>" alt="Image Destination <?= $value['slug'] ?> ">
                                                <div class="content">
                                                    <h2><?= $value['title_vi'] ?></h2>
                                                    <h6><?= $value['description_vi'] ?></h6>
                                                </div>
                                            </div>
                                            <div class="content">
                                                <ul>
                                                    <?php if ($value['destination']): ?>
                                                        <?php foreach ($value['destination'] as $k => $val): ?>
                                                        <li>
                                                            <a href="<?php echo base_url('diem-den/'.$item['slug'].'/'.$value['slug'].'/' . $val['slug']) ?>">
                                                                <?= $val['title_vi'] ?>
                                                            </a>
                                                        </li>
                                                        <?php endforeach ?>
                                                    <?php endif ?>
                                                </ul>

                                                <div class="item-footer">
                                                    <a href="<?php echo base_url('diem-den/'.$item['slug'].'/'.$value['slug']) ?>" class="btn btn-primary" role="button">
                                                        See More
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    <?php endif ?>
                                <?php endforeach ?>
                            <?php endif ?>
                            </div>
                        </div>
                    <?php endforeach ?>
                <?php endif ?>
            </div>

            <div class="see-more">
                <button class="btn btn-default" type="button">
                    See more <i class="fas fa-angle-double-right"></i>
                </button>
            </div>
        </div>
    </div>
</section>