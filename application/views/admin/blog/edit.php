<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Cập nhật
            <small>
                Bài viết
            </small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('admin') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li><a href="<?= base_url('admin/blog') ?>"><i class="fa fa-dashboard"></i> Danh sách bài viết</a></li>
            <li class="active">Cập nhật bài viết</li>
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
                            <h4 class="box-title">Cập nhật bài viết: <span class="label label-success"><?= $detail['title_vi'] ?></span></h4>
                        </div>
                        <div class="row">
                            <span><?php echo $this->session->flashdata('message'); ?></span>
                        </div>
                        <div class="form-group col-xs-12 common-avatar">
                            <label for="image">Ảnh đại diện</label><br />
                            <?php if ( $detail['avatar'] ): ?>
                                <img src="<?php echo base_url('assets/upload/blog/' . $detail['slug'] . '/' . $detail['avatar']) ?>" data-image="<?= $detail['avatar'] ?>" width="150" id="avatar">
                            <?php endif ?>
                        </div>
                        <div class="form-group col-xs-12">
                            <div class="form-group col-xs-12">
                                <label for="image">Hình ảnh đang sử dụng</label><br />
                                <?php if ( json_decode($detail['image']) ): ?>
                                    <?php foreach (json_decode($detail['image']) as $key => $value): ?>
                                        <?php if ($value !== $detail['avatar']): ?>
                                            <div class="col-sm-3 col-xs-6 remove-image-<?= $key ?> common-image" style="position: relative;padding-right:0px;padding-left: 10px; margin-bottom: 10px;">
                                                <img src="<?php echo base_url('assets/upload/blog/' . $detail['slug'] . '/' . $value) ?>" alt="Image Detail" width="100%" max-height="180px">
                                                <i class="fa-2x fa fa-check active-avatar" data-url="<?= base_url('admin/blog/active_avatar') ?>" data-id="<?= $detail['id'] ?>" data-image="<?= $value ?>" data-controller="blog" title="Chọn ảnh làm Avatar" style="cursor: pointer; position: absolute;color:black; top:0px;right:30px;"></i>
                                                <i class="fa-2x fa fa-times remove-image" title="Xóa hình ảnh" data-url="<?= base_url('admin/blog/remove_image') ?>" data-id="<?= $detail['id'] ?>" data-image="<?= $value ?>" data-key="<?= $key ?>" style="cursor: pointer; position: absolute;color:red; top:0px;right: 5px;"></i>
                                            </div>
                                        <?php endif ?>
                                    <?php endforeach ?>
                                <?php endif ?>
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
                        <?php if (handle_common_permission_active_and_remove()): ?>
                            <div class="form-group col-xs-12">
                                <div class="form-group col-xs-12">
                                    <label style="font-weight: bold;">
                                        <?php
                                            echo form_checkbox('is_top', 1, ($detail['is_top'] == 1) ? true : false, 'class="" id="is_top" data-url="'.base_url('admin/blog/check_top').'" data-id="null"');
                                        ?>Chọn sự kiện lên top?
                                        <span class="check_top_error" style="font-weight: 700;display: block;color:red;"></span>
                                    </label>
                                </div>
                            </div>
                        <?php endif ?>
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
                                echo form_label('Vùng miền', 'region_id');
                                echo form_error('region_id');
                                echo form_dropdown('region_id', $region, $detail['region_id'], 'class="form-control" id="region_id" data-url="'. base_url('admin/blog/get_province') .'" ');
                                ?>
                            </div>
                        </div>
                        <div class="form-group col-xs-12">
                            <div class="form-group col-xs-12">
                                <?php
                                echo form_label('Tỉnh / Thành phố', 'province_id');
                                echo form_error('province_id');
                                echo form_dropdown('province_id', $province, $detail['province_id'], 'class="form-control" id="province_id" ');
                                ?>
                            </div>
                        </div>
                        <div class="form-group col-xs-12">
                            <div class="form-group col-xs-12">
                                <?php
                                echo form_label('Tác giả', 'author');
                                echo form_error('author');
                                echo form_input('author', $detail['author'], 'class="form-control" id="author" ');
                                ?>
                            </div>
                        </div>
                        <div class="form-group col-xs-12">
                            <div class="form-group col-xs-12">
                                <?php
                                echo form_label('Quốc tịch', 'nationality');
                                echo form_error('nationality');
                                echo form_input('nationality', $detail['nationality'], 'class="form-control" id="nationality" ');
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
                                    <div class="form-group col-md-12">
                                        <?php
                                        echo form_label('Nội dung', 'body_vi');
                                        echo form_error('body_vi');
                                        echo form_textarea('body_vi', $detail['body_vi'], 'class="form-control  tinymce-area" id="body_vi"');
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
                                    <div class="form-group col-md-12">
                                        <?php
                                        echo form_label('Nội dung', 'body_en');
                                        echo form_error('body_en');
                                        echo form_textarea('body_en', $detail['body_en'], 'class="form-control tinymce-area" id="body_en"');
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

