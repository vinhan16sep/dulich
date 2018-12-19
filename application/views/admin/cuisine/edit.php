<div class="content-wrapper">
    <div id="encypted_ppbtn_all"></div>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Cập nhật
            <small>
                Món ăn
            </small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('admin') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li><a href="<?= base_url('admin/cuisine') ?>"><i class="fa fa-dashboard"></i> Danh sách món ăn</a></li>
            <li class="active">Cập nhật món ăn</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-default">
                    <div class="box-body">
                        <?php
                        echo form_open_multipart('', array('class' => 'form-horizontal'));
                        ?>
                        <div class="col-xs-12">
                            <h4 class="box-title">Cập nhật món ăn: <span class="label label-success"><?= $detail['title_vi'] ?></span></h4>
                        </div>
                        <div class="row">
                            <span><?php echo $this->session->flashdata('message'); ?></span>
                        </div>
                        <div class="form-group col-xs-12">
                            <div class="form-group col-xs-12">
                                <label for="image">Hình ảnh đang sử dụng</label><br />
                                <div class="row" id="showallimage">
                                    <?php if ( json_decode($detail['image']) ): ?>
                                        <?php foreach (json_decode($detail['image']) as $k => $val): ?>
                                                <div class="col-sm-4 col-xs-6 row_<?php echo $k;?>" style="position: relative;padding-right:0px;padding-left: 10px; margin-bottom: 10px;">
                                                    <img src="<?php echo base_url('assets/upload/cuisine/'.$detail['slug'].'/'. $val ) ?>" alt="Image Detail" width="100%" height="180px">
                                                    <i value="<?= $val ?>" class="fa-2x fa fa-check <?php echo ($detail['avatar'] == $val) ?'avata':''; ?>" style="cursor: pointer; position: absolute;color:<?php echo ($detail['avatar'] == $val) ?'green':'black'; ?>; top:0px;right:30px;" onclick="activated_image('cuisine','<?php echo $detail['id']; ?>','<?php echo $val; ?>','<?php echo $k ?>',this,'<?= $detail['slug'] ?>')"></i>
                                                    <i class="fa-2x fa fa-times" style="cursor: pointer; position: absolute;color:red; top:0px;right: 5px;" onclick="remove_image('cuisine','<?php echo $detail['id']; ?>','<?php echo $val; ?>','<?php echo $k ?>',this,'<?= $detail['slug'] ?>')"></i>
                                                </div>
                                        <?php endforeach ?>
                                    <?php else: ?>
                                        Hiện chưa có hình ảnh cho sự kiện
                                    <?php endif ?>
                                </div>
                            </div>
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
                        <div class="form-group col-xs-12">
                            <div class="form-group col-xs-12">
                                <label style="font-weight: bold;">
                                    <?php
                                        echo form_checkbox('is_top', 1, ($detail['is_top'] == 1) ? true : false, 'class="" id="is_top" data-url="'.base_url('admin/cuisine/check_top').'" data-id="null"');
                                    ?>Chọn sự kiện lên top?
                                    <span class="check_top_error" style="font-weight: 700;display: block;color:red;"></span>
                                </label>
                            </div>
                        </div>
                        <div class="form-group col-xs-12">
                            <div class="form-group col-xs-12">
                                <?php
                                echo form_label('Slug', 'slug');
                                echo form_error('slug');
                                echo form_input('slug', $detail['slug'], 'class="form-control" id="slug" readonly');
                                ?>
                            </div>
                        </div>
                        <div class="form-group col-xs-12">
                            <div class="form-group col-xs-12">
                                <?php
                                echo form_label('Vùng miền', 'cuisine_category_id');
                                echo form_error('cuisine_category_id');
                                echo form_dropdown('cuisine_category_id', $cuisine_category, $detail['cuisine_category_id'], 'class="form-control" id="cuisine_category_id" data-url="'. base_url('admin/cuisine/get_province') .'" ');
                                ?>
                            </div>
                        </div>

                        <div>
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
                            <hr>
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane active" id="language_vi">
                                    <div class="form-group col-xs-12">
                                        <?php 
                                            echo form_label('Tiêu đề', 'title_vi');
                                            echo form_error('title_vi');
                                            echo form_input('title_vi', $detail['title_vi'], 'class="form-control" id="title_vi"');
                                        ?>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <?php
                                        echo form_label('Giới thiệu', 'description_vi');
                                        echo form_error('description_vi');
                                        echo form_textarea('description_vi', $detail['description_vi'], 'class="form-control" id="description_vi"');
                                        ?>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="language_en">
                                    <div class="form-group col-xs-12">
                                        <?php 
                                            echo form_label('Title', 'title_en');
                                            echo form_error('title_en');
                                            echo form_input('title_en', $detail['title_en'], 'class="form-control" id="title_en"');
                                        ?>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <?php
                                        echo form_label('Description', 'description_en');
                                        echo form_error('description_en');
                                        echo form_textarea('description_en', $detail['description_en'], 'class="form-control" id="description_en"');
                                        ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-xs-12">
                            <a href="javascript:history.back()" class="btn btn-default">Quay lại</a>
                            <?php echo form_submit('submit', 'Cập nhật', 'class="btn btn-primary pull-right margin-right-xs"  id="update" '); ?>
                        </div>
                        <?php echo form_close(); ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<script src="<?php echo base_url('assets/js/admin/');?>admin.js" type="text/javascript" charset="utf-8" async defer></script>
<script src="<?php echo base_url('assets/js/admin/');?>update-image.js" type="text/javascript" charset="utf-8" async defer></script>

