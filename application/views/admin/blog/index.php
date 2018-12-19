<!-- Content Wrapper. Contains page content -->

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Danh sách
            <small>
                Tỉnh / Thành phố
            </small>
        </h1>
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
                            <a href="<?php echo base_url('admin/blog/create') ?>" class="btn btn-primary"  >Thêm mới</a>
                        </div>
                        <div class="col-md-6">
                            <form action="<?php echo base_url('admin/blog/index') ?>" method="get">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Tìm kiếm ..." name="search" value="<?= $keywords ?>">
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
                                    <th>TOP</th>
                                    <th>Tên bài viết Tiếng Việt</th>
                                    <th>Tên bài viết phố Tiếng Anh</th>
                                    <th>Tỉnh / Thành phố</th>
                                    <th>Vùng miền</th>
                                    <th>Duyệt bài</th>
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
                                                            <img src="<?= base_url('assets/upload/blog/' . $value['slug'] . '/' . $value['avatar'] ) ?>"  width=150px>
                                                        <?php endif ?>
                                                    </div>
                                                </td>
                                                <td><?= ($value['is_top'] == 1)? '<i class="fa fa-check" aria-hidden="true" style="color: #00a65a"></i>' : '<i class="fa fa-times" aria-hidden="true" style="color: #f0ad4e"></i>' ?></td>
                                                <td><?= $value['title_vi'] ?></td>
                                                <td><?= $value['title_en'] ?></td>
                                                <td><?= ($value['province_id'] != 0) ? $province[$value['province_id']] : 'Không thuộc Tỉnh / Thành Phố' ?></td>
                                                <td><?= $region[$value['region_id']] ?></td>
                                                <td class="is-active-<?= $value['id'] ?>">
                                                    <!-- <input type="checkbox" class="btn-active" data-toggle="toggle" data-onstyle="success" data-offstyle="danger" data-id="<?= $value['id'] ?>" data-url="<?= base_url('admin/blog/active' ) ?>" <?= ($value['is_active'] == 1)? 'checked' : '' ?> checked> -->
                                                    <?php
                                                        if ($value['is_active'] == 0) {
                                                            echo '<span class="label label-warning">Chờ duyệt</span>';
                                                        }else{
                                                            echo '<span class="label label-success">Đã duyệt</span>';
                                                        }
                                                    ?>
                                                </td>
                                                <td>
                                                    <a href="<?= base_url('admin/blog/detail/' . $value['id'] ) ?>" title="Xem chi tiết">
                                                        <i class="fa fa-eye" aria-hidden="true"></i>
                                                    </a>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <a href="<?= base_url('admin/blog/edit/' . $value['id'] ) ?>" style="color: #f0ad4e" title="Cập nhật">
                                                        <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                    </a>
                                                    <?php if (handle_common_permission_active_and_remove()): ?>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <a href="javascript:void(0)" class="btn-remove" data-id="<?= $value['id'] ?>" data-url="<?= base_url('admin/blog/remove' ) ?>" data-name="bài viết"  style="color: #d9534f" title="Xóa">
                                                            <i class="fa fa-trash-o" aria-hidden="true"></i>
                                                        </a>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <a href="javascript:void(0)" class="btn-active" title="Duyệt bài" data-id="<?= $value['id'] ?>" data-url="<?= base_url('admin/blog/active' ) ?>" style="color: #00a65a" >
                                                            <i class="fa fa-check" aria-hidden="true"></i>
                                                        </a>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <a href="javascript:void(0)" class="btn-deactive" title="Tắt bài viết" data-id="<?= $value['id'] ?>" data-url="<?= base_url('admin/blog/deactive' ) ?>" style="color: #f0ad4e">
                                                            <i class="fa fa-times" aria-hidden="true"></i>
                                                        </a>
                                                    <?php endif ?>
                                                </td>
                                            </tr>
                                            <?php $serial++ ?>
                                        <?php endforeach ?>
                                    <?php else: ?>
                                        <tr>
                                            <td colspan="6">
                                                Chưa có tỉnh / thành phố nào được tạo
                                            </td>
                                            
                                        </tr>
                                    <?php endif ?>

                                </tbody>
                                <?php if ($result): ?>
                                    <tfoot>
                                        <tr>
                                            <th>No.</th>
                                            <th>Hình ảnh</th>
                                            <th>TOP</th>
                                            <th>Tên bài viết Tiếng Việt</th>
                                            <th>Tên bài viết phố Tiếng Anh</th>
                                            <th>Tỉnh / Thành phố</th>
                                            <th>Vùng miền</th>
                                            <th>Duyệt bài</th>
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