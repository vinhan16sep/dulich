<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Chi tiết
            <small>Vùng miền</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('admin') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li><a href="<?= base_url('admin/region') ?>"><i class="fa fa-dashboard"></i> Danh sách vùng miền</a></li>
            <li class="active">Chi tiết vùng miền</li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Small boxes (Stat box) -->
        <div class="row">
            <div class="col-md-9">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Chi tiết <span class="label label-success"><?= $detail['title_vi'] ?></span></h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">
                            <div class="detail-image col-md-6 hidden">
                                <label>Hình ảnh</label>
                                <div class="row">
                                    <div class="item col-md-12">
                                        <div class="mask-lg">
                                            <?php if ( json_decode($detail['image']) ): ?>
                                                <img src="<?= base_url('assets/upload/region/' . $detail['slug'] . '/' . json_decode($detail['image'])[0] ) ?>" alt="Image Detail" width=100%>    
                                            <?php endif ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="detail-info col-md-12">
                                <div class="table-responsive">
                                    <label>Thông tin</label>
                                    <table class="table table-striped">
                                        <tbody>
                                            <tr>
                                                <th colspan="2">Thông tin cơ bản</th>
                                            </tr>
                                            <tr>
                                                <th>Slug</th>
                                                <td><?= $detail['slug'] ?></td>
                                            </tr>
                                            <tr>
                                                <th>Tài khoản tạo bài viết</th>
                                                <td><?= $detail['created_by'] ?></td>
                                            </tr>
                                            <tr>
                                                <th>Thời gian tạo bài viết</th>
                                                <td><?= date('H:i:s / d-m-Y', strtotime($detail['created_at'])) ?></td>
                                            </tr>
                                            <tr>
                                                <th>Tài khoản cập nhật bài viết</th>
                                                <td><?= $detail['updated_by'] ?></td>
                                            </tr>
                                            <tr>
                                                <th>Thời gian cập nhật bài viết</th>
                                                <td><?= date('H:i:s / d-m-Y', strtotime($detail['updated_at'])) ?></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="col-md-12 hidden" style="margin: 20px 0px;">
                                <label>Hình ảnh</label>
                                <div class="row">
                                    <?php if ( json_decode($detail['image']) ): ?>
                                        <?php foreach (json_decode($detail['image']) as $key => $value): ?>
                                            <?php if ($value != $detail['avatar']): ?>
                                                <div class="item col-md-3">
                                                    <div class="mask">
                                                        <img src="<?= base_url('assets/upload/region/' . $detail['slug'] . '/' . $value ) ?>" alt="Image Detail" width=100%>    
                                                    </div>
                                                </div>
                                            <?php endif ?>
                                        <?php endforeach ?>
                                    <?php endif ?>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <!-- Nav tabs -->
                                <ul class="nav nav-pills nav-justified" role="tablist">
                                    <li role="presentation" class="active">
                                        <a href="#vi" aria-controls="vi" role="tab" data-toggle="tab">
                                        <span class="badge">1</span> Tiếng Việt
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a href="#en" aria-controls="en" role="tab" data-toggle="tab">
                                        <span class="badge">2</span> English
                                        </a>
                                    </li>
                                </ul>
                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane active" id="vi">
                                        <div class="table-responsive">
                                            <table class="table table-striped">
                                                <tbody>
                                                    <tr>
                                                        <th style="width: 100px">Tiêu đề: </th>
                                                        <td> <?= $detail['title_vi'] ?> </td>
                                                    </tr>
                                                    <tr>
                                                        <th style="width: 100px">Giới thiệu: </th>
                                                        <td> <?= $detail['description_vi'] ?> </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="en">
                                        <div class="table-responsive">
                                            <table class="table table-striped">
                                                <tbody>
                                                    <tr>
                                                        <th style="width: 100px">Title: </th>
                                                        <td> <?= $detail['title_en'] ?> </td>
                                                    </tr>
                                                    <tr>
                                                        <th style="width: 100px">Description: </th>
                                                        <td> <?= $detail['description_en'] ?> </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12" style="padding: 0px;">
                                <div class="form-group col-xs-12">
                            <label for="image">Hình ảnh cho Destination</label><br />
                            <?php if ( json_decode($detail['image']) ): ?>
                                <?php foreach (json_decode($detail['image']) as $key => $value): ?>
                                    <div class="col-sm-3 col-xs-6 remove-image-<?= $key ?> common-image-region" id="img_destination" style="position: relative;padding-right:5px;padding-left: 0px; margin-bottom: 10px;">
                                        <img src="<?php echo base_url('assets/upload/region/' . $detail['slug'] . '/' . $value) ?>" alt="Image Detail" width="100%" height="150px">
                                        <i class="fa-2x fa fa-check active-avatar" data-url="<?= base_url('admin/region/active_avatar') ?>" data-name="img_destination" data-id="<?= $detail['id'] ?>" data-image="<?= $value ?>" data-controller="region" title="Chọn ảnh làm Avatar" style="cursor: pointer; position: absolute;color:<?php echo ($detail['img_destination'] !== $value) ? 'black' : 'green'; ?>; top:0px;right:30px;"></i>
                                        <i class="fa-2x fa fa-times remove-image-region" title="Xóa hình ảnh" data-url="<?= base_url('admin/region/remove_image') ?>" data-id="<?= $detail['id'] ?>" data-image="<?= $value ?>" data-key="<?= $key ?>" style="cursor: pointer; position: absolute;color:red; top:0px;right: 5px;"></i>
                                    </div>
                                <?php endforeach ?>
                            <?php endif ?>
                        </div>
                        <div class="form-group col-xs-12">
                            <label for="image">Hình ảnh cho Blog</label><br />
                            <?php if ( json_decode($detail['image']) ): ?>
                                <?php foreach (json_decode($detail['image']) as $key => $value): ?>
                                    <div class="col-sm-3 col-xs-6 remove-image-<?= $key ?> common-image-region" id="img_blog" style="position: relative;padding-right:5px;padding-left: 0px; margin-bottom: 10px;">
                                        <img src="<?php echo base_url('assets/upload/region/' . $detail['slug'] . '/' . $value) ?>" alt="Image Detail" width="100%" height="150px">
                                        <i class="fa-2x fa fa-check active-avatar" data-url="<?= base_url('admin/region/active_avatar') ?>" data-name="img_blog" data-id="<?= $detail['id'] ?>" data-image="<?= $value ?>" data-controller="region" title="Chọn ảnh làm Avatar" style="cursor: pointer; position: absolute;color:<?php echo ($detail['img_blog'] !== $value) ? 'black' : 'green'; ?>; top:0px;right:30px;"></i>
                                        <i class="fa-2x fa fa-times remove-image-region" title="Xóa hình ảnh" data-url="<?= base_url('admin/region/remove_image') ?>" data-id="<?= $detail['id'] ?>" data-image="<?= $value ?>" data-key="<?= $key ?>" style="cursor: pointer; position: absolute;color:red; top:0px;right: 5px;"></i>
                                    </div>
                                <?php endforeach ?>
                            <?php endif ?>
                        </div>
                        <div class="form-group col-xs-12">
                            <label for="image">Hình ảnh cho Event</label><br />
                            <?php if ( json_decode($detail['image']) ): ?>
                                <?php foreach (json_decode($detail['image']) as $key => $value): ?>
                                    <div class="col-sm-3 col-xs-6 remove-image-<?= $key ?> common-image-region" id="img_event" style="position: relative;padding-right:5px;padding-left: 0px; margin-bottom: 10px;">
                                        <img src="<?php echo base_url('assets/upload/region/' . $detail['slug'] . '/' . $value) ?>" alt="Image Detail" width="100%" height="150px">
                                        <i class="fa-2x fa fa-check active-avatar" data-url="<?= base_url('admin/region/active_avatar') ?>" data-name="img_event" data-id="<?= $detail['id'] ?>" data-image="<?= $value ?>" data-controller="region" title="Chọn ảnh làm Avatar" style="cursor: pointer; position: absolute;color:<?php echo ($detail['img_event'] !== $value) ? 'black' : 'green'; ?>; top:0px;right:30px;"></i>
                                        <i class="fa-2x fa fa-times remove-image-region" title="Xóa hình ảnh" data-url="<?= base_url('admin/region/remove_image') ?>" data-id="<?= $detail['id'] ?>" data-image="<?= $value ?>" data-key="<?= $key ?>" style="cursor: pointer; position: absolute;color:red; top:0px;right: 5px;"></i>
                                    </div>
                                <?php endforeach ?>
                            <?php endif ?>
                        </div>
                        <div class="form-group col-xs-12">
                            <label for="image">Hình ảnh cho Cuisine</label><br />
                            <?php if ( json_decode($detail['image']) ): ?>
                                <?php foreach (json_decode($detail['image']) as $key => $value): ?>
                                    <div class="col-sm-3 col-xs-6 remove-image-<?= $key ?> common-image-region" id="img_cuisine" style="position: relative;padding-right:5px;padding-left: 0px; margin-bottom: 10px;">
                                        <img src="<?php echo base_url('assets/upload/region/' . $detail['slug'] . '/' . $value) ?>" alt="Image Detail" width="100%" height="150px">
                                        <i class="fa-2x fa fa-check active-avatar" data-url="<?= base_url('admin/region/active_avatar') ?>" data-name="img_cuisine" data-id="<?= $detail['id'] ?>" data-image="<?= $value ?>" data-controller="region" title="Chọn ảnh làm Avatar" style="cursor: pointer; position: absolute;color:<?php echo ($detail['img_cuisine'] !== $value) ? 'black' : 'green'; ?>; top:0px;right:30px;"></i>
                                        <i class="fa-2x fa fa-times remove-image-region" title="Xóa hình ảnh" data-url="<?= base_url('admin/region/remove_image') ?>" data-id="<?= $detail['id'] ?>" data-image="<?= $value ?>" data-key="<?= $key ?>" style="cursor: pointer; position: absolute;color:red; top:0px;right: 5px;"></i>
                                    </div>
                                <?php endforeach ?>
                            <?php endif ?>
                        </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col -->
            <div class="col-md-3">
                <div class="box box-warning">
                    <div class="box-header">
                        <h3 class="box-title">Edit Information</h3>
                    </div>
                    <div class="box-body">
                        <a href="<?= base_url('admin/region/edit/' . $detail['id']) ?>" class="btn btn-warning" role="button">Chỉnh sửa</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- /.row -->
        <!-- END ACCORDION & CAROUSEL-->
    </section>
</div>