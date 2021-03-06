<!-- Content Wrapper. Contains page content -->

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Danh sách
            <small>
                Sự kiện
            </small>
        </h1>
         <ol class="breadcrumb">
            <li><a href="<?= base_url('admin') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li><a href="<?= base_url('admin/events') ?>"><i class="fa fa-dashboard"></i> Danh sách sự kiện</a></li>
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
                            <a href="<?php echo base_url('admin/events/create') ?>" class="btn btn-primary"  >Thêm mới</a>
                            <a href="javascript:void(0)" data-url="<?php echo base_url('admin/events/delete_all'); ?>" class="btn btn-danger btn-delete-all"  >Xóa tất cả</a>
                        </div>
                        <div class="col-md-6">
                            <form action="<?php echo base_url('admin/events/index') ?>" method="get">
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

                        <div class="table-responsive delete-checkbox">
                            <table id="table" class="table table-hover table-striped">
                                <thead>
                                <tr>
                                    <th><button type="button" class="btn btn-default btn-sm checkbox-toggle"><i class="fa fa-square-o"></i> &nbsp&nbsp All</th>
                                    <th>No.</th>
                                    <th>Hình ảnh</th>
                                    <th>Tên sự kiện Tiếng Việt</th>
                                    <th>Tên sự kiện Tiếng Anh</th>
                                    <th>Tỉnh / Thành phố</th>
                                    <th>Vùng miền</th>
                                    <th>Duyệt Bài</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <?php $serial = 1; ?>
                                    <?php if ($result): ?>
                                        <?php foreach ($result as $key => $value): ?>
                                            <tr class="remove-<?= $value['id'] ?>">
                                                <td><input type="checkbox" name="is_delete[]" value="<?= $value['id'] ?>" class="is-delete-all" ></td>
                                                <td><?= $serial ?></td>
                                                <td>
                                                    <div class="mask_sm">
                                                        <img src="<?= base_url('assets/upload/events/' . $value['slug'] . '/' . $value['image']) ?>"  width=150px height=100px>
                                                    </div>
                                                </td>
                                                <td><a href="<?php echo base_url('su-kien/' . $region_slug[$value['region_id']] . '/' . $province_slug[$value['province_id']] . '/' . $value['slug']) ?>"  target="_blank" ><?= $value['title_vi'] ?></a></td>
                                                <td><?php echo $value['title_en'] ?></td>
                                                <td><?= empty($province[$value['province_id']]) ? '(Không có)' : $province[$value['province_id']] ?></td>
                                                <td><?= $region[$value['region_id']] ?></td>
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
                                                    <a href="<?= base_url('admin/events/detail/' . $value['id'] ) ?>" title="Xem chi tiết">
                                                        <i class="fa fa-eye" aria-hidden="true"></i>
                                                    </a>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <a href="<?= base_url('admin/events/edit/' . $value['id'] ) ?>" style="color: #f0ad4e" title="Cập nhật">
                                                        <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                    </a>
                                                    <?php if (handle_common_permission_active_and_remove()): ?>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <a href="javascript:void(0)" class="btn-remove" data-id="<?= $value['id'] ?>" data-url="<?= base_url('admin/events/remove' ) ?>" data-name="sự kiện" style="color: #d9534f" title="Xóa">
                                                        <i class="fa fa-trash-o" aria-hidden="true"></i>
                                                    </a>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <a href="javascript:void(0)" class="btn-active" title="Duyệt bài" data-id="<?= $value['id'] ?>" data-name="sự kiện" data-is_active = "<?= $value['is_active'] ;?>" data-url="<?= base_url('admin/events/active' ) ?>" style="color: #00a65a" >
                                                        <i class="fa fa-check" aria-hidden="true"></i>
                                                    </a>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <a href="javascript:void(0)" class="btn-deactive" title="Tắt bài viết" data-id="<?= $value['id'] ?>" data-name="sự kiện" data-is_active = "<?= $value['is_active'] ;?>" data-url="<?= base_url('admin/events/deactive' ) ?>" style="color: #f0ad4e">
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
                                                Chưa sự kiện nào được tạo
                                            </td>
                                            
                                        </tr>
                                    <?php endif ?>

                                </tbody>
                                <?php if ($result): ?>
                                    <tfoot>
                                        <tr>
                                            <th></th>
                                            <th>No.</th>
                                            <th>Hình ảnh</th>
                                            <th>Tên sự kiện Tiếng Việt</th>
                                            <th>Tên sự kiện Tiếng Anh</th>
                                            <th>Tỉnh / Thành phố</th>
                                            <th>Vùng miền</th>
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