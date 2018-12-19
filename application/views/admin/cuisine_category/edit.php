<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Cập nhật
            <small>
                danh mục món ăn
            </small>
        </h1>
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
                            <h4 class="box-title">Cập nhật danh mục món ăn: <?= $detail['title_vi'] ?></h4>
                        </div>
                        <div class="row">
                            <span><?php echo $this->session->flashdata('message'); ?></span>
                        </div>
                        <div class="form-group col-xs-12">
                            <div class="form-group col-xs-12">
                                <label for="image">Hình ảnh đang sử dụng</label><br />
                                <?php if ( $detail['image'] ): ?>
                                    <img src="<?php echo base_url('assets/upload/cuisine_category/' . $detail['slug'] . '/' . $detail['image']) ?>" width="150">
                                <?php else: ?>
                                    Hiện chưa có hình ảnh cho danh mục món ăn
                                <?php endif ?>
                            </div>
                        </div>
                        <div class="form-group col-xs-12">
                            <div class="form-group col-xs-12">
                                <?php
                                echo form_label('Hình ảnh (Dung lượng ảnh phải nhỏ hơn 1.2Mb)', 'image');
                                echo form_error('image');
                                echo form_upload('image', set_value('image'), 'class="form-control"');
                                ?>
                            </div>
                            <br>
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
                                echo form_label('Vùng miền', 'region_id');
                                echo form_error('region_id');
                                echo form_dropdown('region_id', $region, $detail['region_id'], 'class="form-control" id="region_id" data-url="'. base_url('admin/cuisine_category/get_province') .'" ');
                                ?>
                            </div>
                        </div>
                        <div class="form-group col-xs-12 hidden">
                            <div class="form-group col-xs-12">
                                <?php
                                echo form_label('Tỉnh / Thành phố', 'province_id');
                                echo form_error('province_id');
                                echo form_dropdown('province_id', $province, $detail['province_id'], 'class="form-control" id="province_id" ');
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
                            <?php echo form_submit('submit', 'Cập nhật', 'class="is_category btn btn-primary pull-right margin-right-xs"'); ?>
                        </div>
                        <?php echo form_close(); ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<script src="<?php echo base_url('assets/js/admin/');?>admin.js" type="text/javascript" charset="utf-8" async defer></script>

