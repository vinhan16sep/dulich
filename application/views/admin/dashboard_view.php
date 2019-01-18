

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Dashboard
            <small>Control panel</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
        </ol>
    </section>
    <?php if ($this->session->flashdata('message_error')): ?>
        <div class="alert alert-warning alert-dismissible">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <h4><i class="icon fa fa-warning"></i> Alert!</h4>
            <?php echo $this->session->flashdata('message_error'); ?>
        </div>
    <?php endif ?>
    <?php if ($this->session->flashdata('message_success')): ?>
        <div class="alert alert-success alert-dismissible">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <h4><i class="icon fa fa-check"></i> Alert!</h4>
            <?php echo $this->session->flashdata('message_success'); ?>
        </div>
    <?php endif ?>
    <!-- Main content -->
    <section class="content">
        <!-- Small boxes (Stat box) -->
        <div class="row">
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-aqua">
                    <div class="inner">
                        <h3><?php echo $total_region ?></h3>

                        <p>Vùng miền</p>
                    </div>
                    <div class="icon">
                        <i class="fa fa-globe" aria-hidden="true"></i>
                    </div>
                    <a href="<?php echo base_url('admin/region') ?>" class="small-box-footer">Chi tiết <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-green">
                    <div class="inner">
                        <h3><?php echo $total_province ?></h3>

                        <p>Tỉnh thành</p>
                    </div>
                    <div class="icon">
                        <i class="fa fa-map" aria-hidden="true"></i>
                    </div>
                    <a href="<?php echo base_url('admin/province') ?>" class="small-box-footer">Chi tiết <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-yellow">
                    <div class="inner">
                        <h3><?php echo $total_destination ?></h3>

                        <p>Điểm đến</p>
                    </div>
                    <div class="icon">
                        <i class="fa fa-street-view" aria-hidden="true"></i>
                    </div>
                    <a href="<?php echo base_url('admin/destination') ?>" class="small-box-footer">Chi tiết <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-red">
                    <div class="inner">
                        <h3><?php echo $total_cuisine ?></h3>

                        <p>Món ăn</p>
                    </div>
                    <div class="icon">
                        <i class="fa fa-cutlery" aria-hidden="true"></i>
                    </div>
                    <a href="<?php echo base_url('admin/cuisine') ?>" class="small-box-footer">Chi tiết <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-light-blue">
                    <div class="inner">
                        <h3><?php echo $total_events ?></h3>

                        <p>Sự kiện</p>
                    </div>
                    <div class="icon">
                        <i class="fa fa-calendar" aria-hidden="true"></i>
                    </div>
                    <a href="<?php echo base_url('admin/events') ?>" class="small-box-footer">Chi tiết <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-purple">
                    <div class="inner">
                        <h3><?php echo $total_blog ?></h3>

                        <p>Bài viết</p>
                    </div>
                    <div class="icon">
                        <i class="fa fa-address-book" aria-hidden="true"></i>
                    </div>
                    <a href="<?php echo base_url('admin/blog') ?>" class="small-box-footer">Chi tiết <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
        </div>
        <!-- /.row -->

    </section>
    <!-- /.content -->
</div>

