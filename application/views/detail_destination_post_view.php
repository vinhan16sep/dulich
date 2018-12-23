<section id="detail-destination-post" class="detail-post">
    <div class="main-cover">
        <div class="mask">
            <img src="https://images.unsplash.com/photo-1545540307-1765af16ce99?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80" alt="Image Cover Blog">

            <div class="content">
                <div class="container">
                    <div class="row">
                        <div class="item col-xs-12 col-lg-6">
                            <h1>Title Comes Here</h1>
                            <p class="text-wrapper">
                                Donec pellentesque libero ac varius lobortis. Cras placerat imperdiet urna, in posuere urna elementum in. Ut commodo lectus diam, a volutpat elit iaculis eget. Nunc varius nec ex eu volutpat. Morbi fermentum metus quis quam posuere vehicula. Mauris consectetur arcu nulla, sed cursus arcu auctor et. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
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
                        <strong>Time: 99:00</strong>
                    </div>
                    <article>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut egestas enim eget tellus cursus mollis. Quisque condimentum odio metus, a semper metus sagittis ac. Morbi aliquam odio consequat felis aliquam convallis. Integer imperdiet dictum felis, eget scelerisque dolor aliquet sed. Aenean scelerisque egestas pulvinar. Praesent lobortis imperdiet massa id molestie. Integer facilisis, ex ac tristique consequat, dui dolor eleifend velit, dapibus iaculis massa tellus et quam. Donec nec metus id justo volutpat pharetra. Mauris risus felis, malesuada et augue eu, fringilla maximus nibh. Maecenas semper faucibus sodales.</p>
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