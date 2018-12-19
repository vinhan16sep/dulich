<section id="detail-event">
    <div class="cover">
        <div class="mask">
            <img src="<?php echo base_url('assets/upload/events/'.$detail['slug'].'/'.$detail['image']); ?>" alt="Image Cover Blog">

            <div class="content">
                <div class="container">
                    <h2><?= $detail['title_vi'] ?></h2>
                    <p class="text-wrapper">
                        <?= $detail['description_vi'] ?>
                    </p>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid" id="content">
        <div class="container">
            <div class="row">
                <div class="left col-xs-12 col-lg-8">
                    <div>
                        <strong>Time: <?= (date_format(date_create($detail['date_start']),"d M Y") == date_format(date_create($detail['date_end']),"d M Y")) ? date_format(date_create($detail['date_start']),"d M Y") : date_format(date_create($detail['date_start']),"d M Y").' - '.date_format(date_create($detail['date_end']),"d M Y") ?></strong>
                    </div>
                    <article>
                        <?= $detail['body_vi'] ?>
                    </article>
                </div>

                <div class="right col-xs-12 col-lg-4">
                    <div class="recommended">
                        <?php foreach ($get_related as $key => $value): ?>
                            
                            <div class="item">
                                <div class="item-image">
                                    <div class="mask">
                                        <img src="<?php echo base_url('assets/upload/events/'.$value['slug'].'/'.$value['image']); ?>" alt="Image Blog">
                                    </div>
                                </div>
                                <div class="item-content">
                                    <div class="content-header">
                                        <span class="badge"><?= $value['province_title_vi'] ?></span>
                                        <a href="<?php echo base_url('su-kien/'.$value['slug']) ?>">
                                            <h3><?= $value['title_vi'] ?></h3>
                                        </a>
                                        <h6>Time | <small> <?= (date_format(date_create($value['date_start']),"d M Y") == date_format(date_create($value['date_end']),"d M Y")) ? date_format(date_create($value['date_start']),"d M Y") : date_format(date_create($value['date_start']),"d M Y").' - '.date_format(date_create($value['date_end']),"d M Y") ?></small></h6>
                                        <ul>
                                            <li>Rating</li>

                                            <li>Created Date</li>
                                        </ul>
                                    </div>
                                    <div class="content-body">
                                        <p class="text-wrapper">
                                            <?= $value['description_vi'] ?>
                                        </p>
                                    </div>
                                    <div class="content-footer">
                                        <a href="<?php echo base_url('su-kien/'.$value['slug']) ?>" class="btn btn-primary" role="button">
                                            View Detail
                                        </a>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>