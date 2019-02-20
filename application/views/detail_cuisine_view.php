<section id="detail-cuisine" class="detail-post">
    <div class="main-cover">
        <div class="mask">
            <img src="<?php echo base_url('assets/upload/region/'.$region['slug'].'/'.$region['avatar']) ?>" alt="Image Cover Blog">

            <div class="content">
                <div class="container">
                    <div class="row">
                        <div class="item col-xs-12 col-lg-6">
                            <h1><?php echo $cuisine['title'];?></h1>
                            <p class="text-wrapper">
                                <?php echo $cuisine['description'];?>
                            </p>
                        </div>
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
                            <?php echo $cuisine['body'] ?>
                        </p>

                        <img src="<?php echo base_url('assets/upload/cuisine/'.$cuisine['slug'].'/'.$cuisine['avatar']) ?>" alt="Image of Post">
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

                        <?php foreach ($get_related as $key => $value): ?>
                            <div class="item">
                                <div class="item-image">
                                    <div class="mask">
                                        <a href="<?php echo base_url('cuisine/'.$value['slug']) ?>">
                                            <img src="<?php echo base_url('assets/upload/cuisine/'.$value['slug'].'/'.$value['avatar']) ?>" alt="Image Blog">
                                        </a>
                                    </div>
                                </div>
                                <div class="item-content">
                                    <div class="content-header">
                                        <span class="badge"><?php echo empty($value['province']) ? $region['title'] : $value['province']; ?></span>
                                        <a href="<?php echo base_url('cuisine/'.$value['slug']) ?>">
                                            <h3 class="text-wrapper"><?php echo $value['title'] ?></h3>
                                        </a>
                                    </div>
                                    <div class="content-body">
                                        <p class="text-wrapper">
                                            <?php echo $value['description'] ?>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach;?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>