<section id="detail-destination-post" class="detail-post">
    <div class="main-cover">
        <div class="mask">
            <img src="<?php echo base_url('assets/upload/destination/' . $destination['slug'] . '/' . $destination['avatar']) ?>" alt="Image <?php echo $destination['slug'] ?>">

<!--            <div class="content">-->
<!--                <div class="container">-->
<!--                    <div class="row">-->
<!--                        <div class="item col-xs-12 col-lg-6">-->
<!--                            <h1>--><?php //echo $destination['title'] ?><!--</h1>-->
<!--                            <p class="text-wrapper">-->
<!--                                --><?php //echo $destination['description'] ?>
<!--                            </p>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                </div>-->
<!--            </div>-->
        </div>
    </div>

    <div class="container-fluid" id="content">
        <div class="container">
            <div class="row">
                <div class="left col-xs-12 col-lg-8">
                    <div class="article">
                        <h1><?php echo $destination['title'] ?></h1>
                        <p class="text-wrapper">
                            <?php echo $destination['description'] ?>
                        </p>

                        <article>
                            <p><?php echo $destination['body'] ?></p>
                        </article>
                    </div>

                    <div class="row recommended">
                        <?php foreach ($get_related as $key => $value): ?>

                            <div class="item col-xs-12 col-md-6 col-lg-4">
                                <div class="item-image">
                                    <div class="mask">
                                        <img src="<?php echo base_url('assets/upload/destination/'.$value['slug'].'/'.$value['avatar']); ?>" alt="Image Blog">
                                    </div>
                                </div>
                                <div class="item-content">
                                    <div class="content-header">

                                        <a href="<?php echo base_url('destination/'.$value['slug']) ?>">
                                            <h5 class="text-wrapper"><?= $value['title'] ?></h5>
                                        </a>
                                    </div>
                                    <!--
                                    <div class="content-body">
                                        <p class="text-wrapper">
                                            <?= $value['description'] ?>
                                        </p>
                                    </div>
                                    -->
                                    <div class="content-footer">
                                        <a href="<?php echo base_url('destination/'.$value['slug']) ?>" class="btn btn-primary" role="button">
                                            View Detail
                                        </a>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach ?>
                    </div>
                </div>

                <div class="right col-xs-12 col-lg-4">
                    <div class="recommended">
                        <?php foreach ($get_related as $key => $value): ?>

                            <div class="item">
                                <div class="item-image">
                                    <div class="mask">
                                        <img src="<?php echo base_url('assets/upload/destination/'.$value['slug'].'/'.$value['avatar']); ?>" alt="Image Blog">
                                    </div>
                                </div>
                                <div class="item-content">
                                    <div class="content-header">

                                        <a href="<?php echo base_url('destination/'.$value['slug']) ?>">
                                            <h3 class="text-wrapper"><?= $value['title'] ?></h3>
                                        </a>
                                    </div>
                                    <!--
                                    <div class="content-body">
                                        <p class="text-wrapper">
                                            <?= $value['description'] ?>
                                        </p>
                                    </div>
                                    -->
                                    <div class="content-footer">
                                        <a href="<?php echo base_url('destination/'.$value['slug']) ?>" class="btn btn-primary" role="button">
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