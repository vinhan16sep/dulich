<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Chi tiết
            <small>
                Customer
            </small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li><a href="#"><i class="fa fa-dashboard"></i> Chi tiết</a></li>
            <li class="active">
                Customer
            </li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash() ?>" id="csrf" />
        <!-- Small boxes (Stat box) -->
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
            <div class="col-md-9">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Chi tiết</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">
                            <label class="col-xs-12">Hình ảnh các Customer</label>
                            <div class="detail-image col-xs-12">
                                <?php foreach ($detail as $key => $value): ?>
                                    <div class="col-sm-4 col-xs-6 remove_<?php echo $value['id'] ?>" style="position: relative;padding-right:10px;padding-left: 0px; margin-bottom: 10px;">
                                        <img src="<?php echo base_url('assets/upload/'.$controller.'/'.$value['image']); ?>" alt="anh-mo-ta" width=100% height=200px>
                                        <?php if ($value['is_active'] == 1): ?>
                                            <a href="javascript:void(0);" onclick="deactive('customer', <?php echo $value['id'] ?>, 'Chăc chắn tắt Customer')" class="dataActionDelete" title="Tắt Customer"><i class="fa-2x fa fa-low-vision" aria-hidden="true" style="cursor: pointer; position: absolute;color:#00FFFF; ?>; top:0px;right:75px;"></i> </a>
                                        <?php else: ?>
                                            <a href="javascript:void(0);" onclick="active('customer', <?php echo $value['id'] ?>, 'Chăc chắn bật Customer')" class="dataActionDelete" title="Bật Customer"><i class="fa-2x fa fa-eye" aria-hidden="true" style="cursor: pointer; position: absolute;color:red; ?>; top:0px;right:75px;"></i> </a>
                                        <?php endif ?>
                                        <i class="fa-2x fa fa-pencil" style="cursor: pointer; position: absolute;color:#00FFFF; top:0px;right: 45px;" onclick="edit_customer('<?php echo $value['id'] ?>')"></i>
                                        <i class="fa-2x fa fa-remove" style="cursor: pointer; position: absolute;color:#00FFFF; top:0px;right: 15px;" aria-hidden="true" onclick="remove('customer', <?php echo $value['id'] ?>)"></i>
                                    </div>
                                <?php endforeach ?>
                            </div>
                            <div class="detail-info col-md-6 hidden" style="margin-top: 5px;">
                                <label>Status: </label>
                                <?php if ($detail['is_active'] == 1): ?>
                                    <a class="btn btn-success btn-xs" title="Banner đang bật">Đang  sử dụng </a>
                                <?php else: ?>
                                    <a class="btn btn-warning btn-xs" title="Banner không sử dụng">Không sử dụng</a>
                                <?php endif ?>
                            </div>
                            <div class="col-md-12 hidden" style="margin-top: 5px;">
                                <div class="table-responsive">
                                    <table class="table table-striped">
                                        <tbody>
                                                <tr>
                                                    <th style="width: 100px">Tiêu đề: </th>
                                                    <td><?php echo $detail['title'] ?></td>
                                                </tr>
                                                <tr>
                                                    <th style="width: 100px">Giới thiệu: </th>
                                                    <td><?php echo $detail['description'] ?></td>
                                                </tr>
                                        </tbody>
                                    </table>
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
                        <h3 class="box-title">Thêm mới Customer</h3>
                    </div>
                    <div class="box-body">
                        <a href="<?php echo base_url('admin/'.$controller.'/create') ?>" class="btn btn-primary" role="button">Thêm mới</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->
        <!-- END ACCORDION & CAROUSEL-->
    </section>
</div>
<script type="text/javascript">
    function edit_customer(id){
        window.location = HOSTNAMEADMIN+'/customer/edit/'+id;
    }
    function remove_customer(){

    }
</script>