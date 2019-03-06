<section id="detail-cuisine" class="detail-post">
    <div class="main-cover">
        <div class="mask">
            <img src="<?php echo base_url('assets/upload/region/'.$region['slug'].'/'.$region['avatar']) ?>" alt="Image Cover Blog">

<!--            <div class="content">-->
<!--                <div class="container">-->
<!--                    <div class="row">-->
<!--                        <div class="item col-xs-12 col-lg-6">-->
<!--                            <h1>--><?php //echo $cuisine['title'];?><!--</h1>-->
<!--                            <p class="text-wrapper">-->
<!--                                --><?php //echo $cuisine['description'];?>
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
                        <h1><?php echo $cuisine['title'];?></h1>
                        <p class="text-wrapper">
                            <?php echo $cuisine['description'];?>
                        </p>
                        <article>
                            <p>
                                <?php echo $cuisine['body'] ?>
                            </p>

                            <img src="<?php echo base_url('assets/upload/cuisine/'.$cuisine['slug'].'/'.$cuisine['avatar']) ?>" alt="Image of Post">
                        </article>
                    </div>

                    <div class="row recommended">
                        <?php foreach ($get_related as $key => $value): ?>
                            <div class="item col-xs-12 col-md-6 col-lg-4">
                                <div class="item-image">
                                    <div class="mask">
                                        <a href="<?php echo base_url('cuisine/'.$value['slug']) ?>">
                                            <img src="<?php echo base_url('assets/upload/cuisine/'.$value['slug'].'/'.$value['avatar']) ?>" alt="Image Blog">
                                        </a>
                                    </div>
                                </div>
                                <div class="item-content">
                                    <div class="content-header">
                                        <!--<span class="badge"><?php echo empty($value['province']) ? $region['title'] : $value['province']; ?></span>-->
                                        <a href="<?php echo base_url('cuisine/'.$value['slug']) ?>">
                                            <h5 class="text-wrapper"><?php echo $value['title'] ?></h5>
                                        </a>
                                    </div>
                                    <!--
                                    <div class="content-body">
                                        <p class="text-wrapper">
                                            <?php echo $value['description'] ?>
                                        </p>
                                    </div>
                                    -->
                                </div>
                            </div>
                        <?php endforeach;?>
                    </div>
                </div>

                <div class="right col-xs-12 col-lg-4">
                    <div class="recommended">
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
                                        <!--<span class="badge"><?php echo empty($value['province']) ? $region['title'] : $value['province']; ?></span>-->
                                        <a href="<?php echo base_url('cuisine/'.$value['slug']) ?>">
                                            <h3 class="text-wrapper"><?php echo $value['title'] ?></h3>
                                        </a>
                                    </div>
                                    <!--
                                    <div class="content-body">
                                        <p class="text-wrapper">
                                            <?php echo $value['description'] ?>
                                        </p>
                                    </div>
                                    -->
                                </div>
                            </div>
                        <?php endforeach;?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>