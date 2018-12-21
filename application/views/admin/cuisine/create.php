<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Thêm mới
            <small>
                Món ăn
            </small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('admin') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li><a href="<?= base_url('admin/cuisine') ?>"><i class="fa fa-dashboard"></i> Danh sách món ăn</a></li>
            <li class="active">Thêm mới món ăn</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-default">
                    <div class="box-body">
                        <?php if ($this->session->flashdata('message_error')): ?>
                            <div class="alert alert-warning alert-dismissible">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                <h4><i class="icon fa fa-warning"></i> Alert!</h4>
                                <?php echo $this->session->flashdata('message_error'); ?>
                            </div>
                        <?php endif ?>
                        <?php
                        echo form_open_multipart('', array('class' => 'form-horizontal'));
                        ?>
                        <div class="col-xs-12" style="padding: 0px;">
                            <h4 class="box-title">Thông tin cơ bản</h4>
                        </div>
                        <div class="row">
                            <span><?php echo $this->session->flashdata('message'); ?></span>
                        </div>
                        <div class="form-group col-xs-12">
                            <div class="form-group col-xs-12">
                                <?php
                                    echo form_label('Hình ảnh (Dung lượng ảnh phải nhỏ hơn 1.2Mb)', 'image');
                                    echo form_error('image');
                                    echo form_upload('image[]', set_value('image'), 'class="form-control" multiple');
                                ?>
                            </div>
                            <br>
                        </div>
                        <div class="form-group col-xs-12" id="box_is_top">
                            <div class="form-group col-xs-12" style="margin: 0px;padding-left: 0px;">
                                <label style="font-weight: bold;">
                                <?php
                                    echo form_checkbox('is_top', 1, false, 'class="" id="is_top" data-url="'.base_url('admin/cuisine/check_top').'" data-id="null"');
                                ?>Chọn sự kiện lên top?
                                <span class="check_top_error" style="font-weight: 700;display: block;color:red;"></span>
                                </label>
                            </div>
                        </div>
                        <div class="form-group col-xs-12"  style="padding-right: 0px;">
                            <div class="form-group col-xs-12"  style="padding-right: 0px;">
                                <?php
                                echo form_label('Slug', 'slug');
                                echo form_error('slug');
                                echo form_input('slug', set_value('slug'), 'class="form-control" id="slug" readonly');
                                ?>
                            </div>
                        </div>

                        <div class="form-group col-xs-12"  style="padding-right: 0px;">
                            <div class="form-group col-xs-12"  style="padding-right: 0px;">
                                <?php
                                echo form_label('Vùng miền', 'region_id');
                                echo form_error('region_id');
                                echo form_dropdown('region_id', $region, 0, 'class="form-control" id="region_id" data-url="'. base_url('admin/events/get_province') .'" ');
                                ?>
                            </div>
                        </div>

                        <div class="form-group col-xs-12"  style="padding-right: 0px;">
                            <div class="form-group col-xs-12"  style="padding-right: 0px;">
                                <?php
                                echo form_label('Danh mục', 'cuisine_category_id');
                                echo form_error('cuisine_category_id');
                                echo form_dropdown('cuisine_category_id', $cuisine_category, set_value('cuisine_category_id'), 'class="form-control" id="cuisine_category_id" data-url="'. base_url('admin/cuisine/get_province') .'" ');
                                ?>
                            </div>
                        </div>

                        <div>
                            <div class="form-group col-xs-12">
                                <ul class="nav nav-pills nav-justified" role="tablist">
                                    <li role="presentation" class="active">
                                        <a href="#language_vi" aria-controls="" role="tab" data-toggle="tab">
                                            <span class="badge">1</span> Tiếng Việt
                                        </a>
                                    </li>
                                    <li role="presentation" class="">
                                        <a href="#language_en" aria-controls="" role="tab" data-toggle="tab">
                                            <span class="badge">2</span> English
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <hr>
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane active" id="language_vi">
                                    <div class="form-group col-xs-12">
                                        <?php 
                                            echo form_label('Tiêu đề', 'title_vi');
                                            echo form_error('title_vi');
                                            echo form_input('title_vi', set_value('title_vi'), 'class="form-control" id="title_vi"');
                                        ?>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <?php
                                        echo form_label('Giới thiệu', 'description_vi');
                                        echo form_error('description_vi');
                                        echo form_textarea('description_vi', set_value('description_vi'), 'class="form-control" id="description_vi"');
                                        ?>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="language_en">
                                    <div class="form-group col-xs-12">
                                        <?php 
                                            echo form_label('Title', 'title_en');
                                            echo form_error('title_en');
                                            echo form_input('title_en', set_value('title_en'), 'class="form-control" id="title_en"');
                                        ?>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <?php
                                        echo form_label('Description', 'description_en');
                                        echo form_error('description_en');
                                        echo form_textarea('description_en', set_value('description_en'), 'class="form-control" id="description_en"');
                                        ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-xs-12">
                            <a href="javascript:history.back()" class="btn btn-default">Quay lại</a>
                            <?php echo form_submit('submit', 'Thêm mới', 'class="btn btn-primary pull-right margin-right-xs" '); ?>
                        </div>
                        <?php echo form_close(); ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<script src="<?php echo base_url('assets/js/admin/');?>admin.js" type="text/javascript" charset="utf-8" async defer></script>

