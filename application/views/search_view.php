<div id="search">
    <div class="container">
        <h1><?= $this->lang->line('search'); ?> "<?= (isset($keywords)) ? $keywords : '' ?>"</h1>

        <div class="result" id="destinations" style="display:none;">
            <div class="heading">
                <h3>Destinations</h3>
            </div>
            <div class="row">
                <div class="item col-xs-12 col-lg-6">
                    <div class="mask">
                        <img src="https://images.unsplash.com/photo-1509957296319-3473fa3828a0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80" alt="Image Province">

                        <div class="title">
                            <h2>Title</h2>
                            <h6>Description</h6>
                        </div>
                    </div>
                    <div class="content">
                        <ul> <!-- List Destinations -->
                            <li>
                                <a href="#">
                                    Location
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="result post">
            <div class="heading">
                <h3>Destinations</h3>
            </div>
            <?php
            // echo "<pre>";
            // print_r($blogs);
            // echo "<pre>";
            // echo "<pre>";
            // print_r($cuisines);
            // echo "<pre>";
            // echo "<pre>";
            // print_r($events);
            // echo "<pre>";
            // echo "<pre>";
            // print_r($destinations);
            // echo "<pre>";die;
             ?>
            <div class="row">
                <?php foreach ($destinations as $key => $value): ?>
                    <div class="item col-xs-12 col-lg-4">
                        <div class="mask">
                            <img src="<?php echo base_url('assets/upload/destination/'.$value['slug'].'/'.$value['avatar']); ?>" alt="Image Slide">
                        </div>
                        <div class="content">
                            <span class="badge"><?= $value['province_title'] ?></span>
                            <h3><?= $value['title'] ?></h3>
                            <p class="text-wrapper"><?= $value['description'] ?></p>

                            <a href="<?php echo base_url('diem-den/' . $value['region_slug'] . '/' . $value['province_slug'] . '/' . $value['slug']) ?>" class="btn btn-primary" role="button">
                                See Detail
                            </a>
                        </div>
                    </div>
                <?php endforeach ?>
            </div>
        </div>
        <div class="result post">
            <div class="heading">
                <h3>Cuisine</h3>
            </div>
            <div class="row">
                <?php foreach ($cuisines as $key => $value): ?>
                    <div class="item col-xs-12 col-lg-4">
                        <div class="mask">
                            <img src="<?php echo base_url('assets/upload/cuisine/'.$value['slug'].'/'.$value['avatar']); ?>" alt="Image Slide">
                        </div>
                        <div class="content">
                            <span class="badge"><?= $value['cuisine_category_title'] ?></span>
                            <h3><?= $value['title'] ?></h3>
                            <p class="text-wrapper"><?= $value['description'] ?></p>

                            <a href="<?php echo base_url('bai-viet/' . $value['region_slug'] . '/' . $value['cuisine_category_slug'] . '/' . $value['slug']) ?>" class="btn btn-primary" role="button">
                                See Detail
                            </a>
                        </div>
                    </div>
                <?php endforeach ?>
            </div>
        </div>
        <div class="result post">
            <div class="heading">
                <h3>Events</h3>
            </div>
            <div class="row">
                <?php foreach ($events as $key => $value): ?>
                    <div class="item col-xs-12 col-lg-4">
                        <div class="mask">
                            <img src="<?php echo base_url('assets/upload/events/'.$value['slug'].'/'.$value['image']); ?>" alt="Image Slide">
                        </div>
                        <div class="content">
                            <span class="badge"><?= $value['province_title'] ?></span>
                            <h3><?= $value['title'] ?></h3>
                            <p class="text-wrapper"><?= $value['description'] ?></p>

                            <a href="<?php echo base_url('su-kien/' . $value['region_slug'] . '/' . $value['province_slug'] . '/' . $value['slug']) ?>" class="btn btn-primary" role="button">
                                See Detail
                            </a>
                        </div>
                    </div>
                <?php endforeach ?>
            </div>
        </div>
        <div class="result post">
            <div class="heading">
                <h3>Blog Reviews</h3>
            </div>
            <div class="row">
                <?php foreach ($blogs as $key => $value): ?>
                    <div class="item col-xs-12 col-lg-4">
                        <div class="mask">
                            <img src="<?php echo base_url('assets/upload/blog/'.$value['slug'].'/'.$value['avatar']); ?>" alt="Image Slide">
                        </div>
                        <div class="content">
                            <span class="badge"><?= $value['province_title'] ?></span>
                            <h3><?= $value['title'] ?></h3>
                            <p class="text-wrapper"><?= $value['description'] ?></p>

                            <a href="<?php echo base_url('bai-viet/' . $value['region_slug'] . '/' . $value['province_slug'] . '/' . $value['slug']) ?>" class="btn btn-primary" role="button">
                                See Detail
                            </a>
                        </div>
                    </div>
                <?php endforeach ?>
            </div>
        </div>
    </div>
</div>