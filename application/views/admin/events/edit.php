<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Cập nhật
            <small>
                Sự kiện
            </small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('admin') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li><a href="<?= base_url('admin/events') ?>"><i class="fa fa-dashboard"></i> Danh sách sự kiện</a></li>
            <li class="active">Cập nhật sự kiện</li>
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
                            <h4 class="box-title">Cập nhật sự kiện: <span class="label label-success"><?= $detail['title_vi'] ?></span></h4>
                        </div>
                        <div class="row">
                            <span><?php echo $this->session->flashdata('message'); ?></span>
                        </div>
                        <div class="form-group col-xs-12">
                            <div class="form-group col-xs-12">
                                <label for="image">Hình ảnh đang sử dụng</label><br />
                                <?php if ( $detail['image'] ): ?>
                                    <img src="<?php echo base_url('assets/upload/events/' . $detail['slug'] . '/' . $detail['image']) ?>" width="150">
                                <?php else: ?>
                                    Hiện chưa có hình ảnh cho sự kiện
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
                                    echo form_label('Chọn thời gian sự kiện diễn ra?', 'date');
                                    echo form_error('date') . '<br />';
                                ?>
                                <div class="input-group" style="float: left;">
                                  <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                  </div>
                                  <input type="text" value="<?= date_format(date_create($detail['date_start']),"d/m/Y").' - '.date_format(date_create($detail['date_end']),"d/m/Y"); ?>" class="form-control pull-right" id="reservation" name="date" readonly>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-xs-12">
                            <div class="form-group col-xs-12">
                                <label style="font-weight: bold;">
                                    <?php
                                        echo form_checkbox('is_top', 1, ($detail['is_top'] == 1) ? true : false, 'class="" id="is_top" data-url="'.base_url('admin/events/check_top').'" data-id="null"');
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
                                echo form_input('slug', $detail['slug'], 'class="form-control" id="slug" ');
                                ?>
                            </div>
                        </div>
                        <div class="form-group col-xs-12">
                            <div class="form-group col-xs-12">
                                <?php
                                echo form_label('Vùng miền', 'region_id');
                                echo form_error('region_id');
                                echo form_dropdown('region_id', $region, $detail['region_id'], 'class="form-control" id="region_id" data-url="'. base_url('admin/events/get_province') .'" ');
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
                                    <div class="form-group col-xs-12">
                                        <?php 
                                            echo form_label('Từ khóa meta', 'metakeywords_vi');
                                            echo form_error('metakeywords_vi');
                                            echo form_input('metakeywords_vi', $detail['metakeywords_vi'], 'class="form-control" id="metakeywords_vi"');
                                        ?>
                                    </div>
                                    <div class="form-group col-xs-12">
                                        <?php 
                                            echo form_label('Mô tả meta', 'metadescription_vi');
                                            echo form_error('metadescription_vi');
                                            echo form_input('metadescription_vi', $detail['metadescription_vi'], 'class="form-control" id="metadescription_vi"');
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
                                    <div class="form-group col-xs-12">
                                        <?php 
                                            echo form_label('Meta keywords', 'metakeywords_en');
                                            echo form_error('metakeywords_en');
                                            echo form_input('metakeywords_en', $detail['metakeywords_en'], 'class="form-control" id="metakeywords_en"');
                                        ?>
                                    </div>
                                    <div class="form-group col-xs-12">
                                        <?php 
                                            echo form_label('Meta description', 'metadescription_en');
                                            echo form_error('metadescription_en');
                                            echo form_input('metadescription_en', $detail['metadescription_en'], 'class="form-control" id="metadescription_en"');
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
                            <?php echo form_submit('submit', 'Cập nhật', 'class="btn btn-primary pull-right margin-right-xs" id="update" '); ?>
                        </div>
                        <?php echo form_close(); ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<script src="<?php echo base_url('assets/js/admin/');?>admin.js" type="text/javascript" charset="utf-8" async defer></script>

