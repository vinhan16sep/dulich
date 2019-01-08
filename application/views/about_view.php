<div id="about">
    <div class="main-cover">
        <div class="mask">
            <?php if (!empty($banner)): ?>
                <?php $image = base_url('assets/upload/about/' . $banner[0]['image']) ?>
            <?php else: ?>
                <?php $image = 'https://images.unsplash.com/photo-1482982425600-04078062c865?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80' ?>
            <?php endif ?>
            <img src="<?= $image ?>" alt="Image Cover About">
            
            <div class="content">
                <div class="container">
                    <div class="row">
                        <div class="item col-xs-12 col-lg-6">
                            <h1><?= (!empty($banner)) ? $banner[0]['title'] : 'Vietnam Travellog';?></h1>
                            <p class="text-wrapper"> <?= (!empty($banner)) ? $banner[0]['description'] : 'Vietnam Travellog';?></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid" id="content">
        <div class="container" id="introduce">
            <?php foreach ($blogs as $key => $value): ?>
                <div class="item <?php echo ($key%2!=0)? 'reverse' : '' ?>">
                    <div class="row">
                        <div class="image col-xs-12 col-lg-6">
                            <div class="mask">
                                <img src="<?= base_url('assets/upload/about/' . $value['image']) ?>" alt="Image Cover About">
                            </div>
                        </div>
                        <div class="content col-xs-12 col-lg-6">
                            <div class="text">
                                <h2><?= $value['title'] ?></h2>
                                <p> <?= $value['description'] ?> </p>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach ?>
        </div>

        <div class="container" id="services">
            <div class="heading">
                <h3>Our Services</h3>
            </div>
            <div class="row">
                <?php foreach ($services as $key => $value): ?>
                    <div class="item col-xs-12 col-lg-4">
                        <div class="mask">
                            <img src="<?= base_url('assets/upload/about/' . $value['image']) ?>" alt="Image Cover About">
                        </div>
                        <p> <?= $value['description'] ?> </p>
                    </div>
                <?php endforeach ?>
            </div>
        </div>

        <div class="container" id="team">
            <div class="heading">
                <h3>Meet Our Team</h3>
            </div>
            <div class="row">
                <div class="item col-xs-12 col-lg-12">
                    <?php if (!empty($team)): ?>
                        <div class="mask">
                            <img src="<?= base_url('assets/upload/about/' . $team[0]['image']) ?>" alt="Image Cover About">
                        </div>
                        <p> <?= $team[0]['description'] ?> </p>
                    <?php endif ?>
                </div>
            </div>
        </div>
    </div>
</div>