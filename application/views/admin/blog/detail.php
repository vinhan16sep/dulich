<div class="content-wrapper">
    <div id="encypted_ppbtn_all"></div>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Chi tiết
            <small>Bài viết</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('admin') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li><a href="<?= base_url('admin/blog') ?>"><i class="fa fa-dashboard"></i> Danh sách bài viết</a></li>
            <li class="active">Chi tiết bài viết</li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Small boxes (Stat box) -->
        <div class="row">
            <div class="col-md-9">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Chi tiết: <span class="label label-success"><?= $detail['title_vi'] ?></span></h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">
                            <div class="detail-image col-md-6">
                                <label>Ảnh đại diện</label>
                                <div class="row">
                                    <div class="item col-md-12">
                                        <div class="mask-lg">
                                            <?php if ( $detail['avatar'] ): ?>
                                                <img src="<?= base_url('assets/upload/blog/' . $detail['slug'] . '/' . $detail['avatar'] ) ?>" alt="Image Detail" width=100% id="showavatar">    
                                            <?php endif ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="detail-info col-md-6">
                                <div class="table-responsive">
                                    <label>Thông tin</label>
                                    <table class="table table-striped">
                                        <tbody>
                                            <tr>
                                                <th>Bài viết được chọn lên TOP</th>
                                                <td><i class="fa fa-<?= ($detail['is_top'] == '0') ? 'remove" style="color:red;font-size:1.2em;"' : 'check" style="color:green;font-size:1.2em;"';?> "></i></td>
                                            </tr>
                                            <tr>
                                                <th>Vùng miền</th>
                                                <td><?= $region['title_vi'] ?></td>
                                            </tr>
                                            <tr>
                                                <th>Tỉnh / Thành phố</th>
                                                <td><?= $province ? $province['title_vi'] : '(Không có)' ?></td>
                                            </tr>
                                            <tr>
                                                <th>Tác giả</th>
                                                <td><?= $detail['author'] ?></td>
                                            </tr>
                                            <tr>
                                                <th>Quốc tịch</th>
                                                <td><?= $detail['nationality'] ?></td>
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
                            <div class="col-md-12" style="margin: 20px 0px;">
                                <label>Hình ảnh</label>
                                <div class="row" id="showallimage">
                                    <?php if ( json_decode($detail['image']) ): ?>
                                        <?php foreach (json_decode($detail['image']) as $k => $val): ?>
                                            <div class="col-sm-4 col-xs-6 row_<?php echo $k;?>" style="position: relative;padding-right:0px;padding-left: 10px; margin-bottom: 10px;">
                                                <img src="<?php echo base_url('assets/upload/blog/'.$detail['slug'].'/'. $val ) ?>" alt="Image Detail" width="100%" height="180px">
                                                <i value="<?= $val ?>" class="fa-2x fa fa-check <?php echo ($detail['avatar'] == $val) ?'avata':''; ?>" style="cursor: pointer; position: absolute;color:<?php echo ($detail['avatar'] == $val) ?'green':'black'; ?>; top:0px;right:30px;" onclick="activated_image('blog','<?php echo $detail['id']; ?>','<?php echo $val; ?>','<?php echo $k ?>',this,'<?= $detail['slug'] ?>')"></i>
                                                <i class="fa-2x fa fa-times" style="cursor: pointer; position: absolute;color:red; top:0px;right: 5px;" onclick="remove_image('blog','<?php echo $detail['id']; ?>','<?php echo $val; ?>','<?php echo $k ?>',this,'<?= $detail['slug'] ?>')"></i>
                                            </div>
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
                                                    <tr>
                                                        <th style="width: 100px">Nội dung: </th>
                                                        <td> <?= $detail['body_vi'] ?> </td>
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
                                                    <tr>
                                                        <th style="width: 100px">Body: </th>
                                                        <td> <?= $detail['body_en'] ?> </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
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
                        <a href="<?= base_url('admin/blog/edit/' . $detail['id']) ?>" class="btn btn-warning" role="button">Chỉnh sửa</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->
        <!-- END ACCORDION & CAROUSEL-->
    </section>
</div>
<script src="<?php echo base_url('assets/js/admin/');?>update-image.js" type="text/javascript" charset="utf-8" async defer></script>