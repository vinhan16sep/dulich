<!-- Content Wrapper. Contains page content -->

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Danh sách
            <small>
                Vùng Miền
            </small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('admin') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li><a href="<?= base_url('admin/region') ?>"><i class="fa fa-dashboard"></i> Danh sách vùng miền</a></li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
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
            <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash() ?>" id="csrf" />
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">
                            Danh sách
                        </h3>
                    </div>

                    <div class="row" style="padding: 10px;">
                        <div class="col-md-6">
                            <a href="<?php echo base_url('admin/region/create') ?>" class="btn btn-primary"  >Thêm mới</a>
                        </div>
                        <div class="col-md-6">
                            <form action="<?php echo base_url('admin/region/index') ?>" method="get">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Tìm kiếm ..." name="search" value="">
                                    <span class="input-group-btn">
                                        <input type="submit" class="btn btn-block btn-primary" value="Tìm kiếm">
                                    </span>
                                </div>
                            </form>
                        </div>
                    </div>

                    <!-- /.box-header -->
                    <div class="box-body">

                        <div class="table-responsive">
                            <table id="table" class="table table_product">
                                <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Hình ảnh</th>
                                    <th>Tên vùng miền Tiếng Việt</th>
                                    <th>Tên vùng miền Tiếng Anh</th>
                                    <th>Duyệt Bài</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <?php $serial = 1; ?>
                                    <?php if ($result): ?>
                                        <?php foreach ($result as $key => $value): ?>
                                            <tr class="remove-<?= $value['id'] ?>">
                                                <td><?= $serial ?></td>
                                                <td>
                                                    <div class="mask_sm">
                                                        <?php if ( $value['avatar'] ): ?>
                                                            <img src="<?= base_url('assets/upload/region/' . $value['slug'] . '/' . $value['avatar'] ) ?>"  width=150px>
                                                        <?php endif ?>
                                                    </div>
                                                </td>
                                                <td><a href="<?php echo base_url('diem-den/' . $value['slug']) ?>"  target="_blank" ><?= $value['title_vi'] ?></a></td>
                                                <td><?= $value['title_en'] ?></td>
                                                <td class="is-active-<?= $value['id'] ?>">
                                                    <?php
                                                        if ($value['is_active'] == 0) {
                                                            echo '<span class="label label-warning">Chờ duyệt</span>';
                                                        }else{
                                                            echo '<span class="label label-success">Đã duyệt</span>';
                                                        }
                                                    ?>
                                                </td>
                                                <td>
                                                    <a href="<?= base_url('admin/region/detail/' . $value['id'] ) ?>" title="Xem chi tiết">
                                                        <i class="fa fa-eye" aria-hidden="true"></i>
                                                    </a>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <a href="<?= base_url('admin/region/edit/' . $value['id'] ) ?>" style="color: #f0ad4e" title="Cập nhật">
                                                        <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                    </a>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <a href="javascript:void(0)" class="btn-remove" data-id="<?= $value['id'] ?>" data-url="<?= base_url('admin/region/remove' ) ?>" data-name="vùng miền"  style="color: #d9534f" title="Xóa">
                                                        <i class="fa fa-trash-o" aria-hidden="true"></i>
                                                    </a>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <a href="javascript:void(0)" class="btn-active" title="Duyệt bài" data-id="<?= $value['id'] ?>" data-url="<?= base_url('admin/region/active' ) ?>" data-name="<?php echo $value['title_vi'] ?>" style="color: #00a65a" >
                                                        <i class="fa fa-check" aria-hidden="true"></i>
                                                    </a>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <a href="javascript:void(0)" class="btn-deactive" title="Tắt bài viết" data-id="<?= $value['id'] ?>" data-url="<?= base_url('admin/region/deactive' ) ?>" data-name="<?php echo $value['title_vi'] ?>" style="color: #f0ad4e">
                                                        <i class="fa fa-times" aria-hidden="true"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <?php $serial++ ?>
                                        <?php endforeach ?>
                                    <?php else: ?>
                                        <tr>
                                            <td colspan="6">
                                                Chưa có vùng miền nào được tạo
                                            </td>
                                            
                                        </tr>
                                    <?php endif ?>

                                </tbody>
                                <?php if ($result): ?>
                                    <tfoot>
                                        <tr>
                                            <th>No.</th>
                                            <th>Hình ảnh</th>
                                            <th>Tên vùng miền Tiếng Việt</th>
                                            <th>Tên vùng miền Tiếng Anh</th>
                                            <th>Duyệt Bài</th>
                                            <th>Action</th>
                                        </tr>
                                    </tfoot>
                                <?php endif ?>
                                
                            </table>
                        </div>
                        <div class="col-md-6 col-md-offset-5 page">
                            <?php echo $page_links ?>
                        </div>
                    </div>
                    <!-- /.box-body -->
                </div>

                <!-- /.box -->
            </div>
        </div>
    </section>
    <!-- /.content -->
</div>