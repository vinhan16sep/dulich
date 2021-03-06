
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Cập Nhật 
            <small>
                Vùng Miền
            </small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('admin') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li><a href="<?= base_url('admin/region') ?>"><i class="fa fa-dashboard"></i> Danh sách vùng miền</a></li>
            <li class="active">Cập nhật vùng miền</li>
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
                            <h4 class="box-title">Cập nhật vùng miền: <span class="label label-success"><?= $detail['title_vi'] ?></span></h4>
                        </div>
                        <div class="row">
                            <span><?php echo $this->session->flashdata('message'); ?></span>
                        </div>
                       <!--  <div class="form-group col-xs-12 common-avatar">
                            <label for="image">Ảnh đại diện</label><br />
                            <?php if ( $detail['avatar'] ): ?>
                                <img src="<?php echo base_url('assets/upload/region/' . $detail['slug'] . '/' . $detail['avatar']) ?>" data-image="<?= $detail['avatar'] ?>" width="150" id="avatar">
                            <?php endif ?>
                        </div>
                        <div class="form-group col-xs-12">
                            <label for="image">Hình ảnh đang sử dụng</label><br />
                            <?php if ( json_decode($detail['image']) ): ?>
                                <?php foreach (json_decode($detail['image']) as $key => $value): ?>
                                    <?php if ($value !== $detail['avatar']): ?>
                                        <div class="col-sm-3 col-xs-6 remove-image-<?= $key ?> common-image" style="position: relative;padding-right:0px;padding-left: 10px; margin-bottom: 10px;">
                                            <img src="<?php echo base_url('assets/upload/region/' . $detail['slug'] . '/' . $value) ?>" alt="Image Detail" width="100%" max-height="180px">
                                            <i class="fa-2x fa fa-check active-avatar" data-url="<?= base_url('admin/region/active_avatar') ?>" data-id="<?= $detail['id'] ?>" data-image="<?= $value ?>" data-controller="region" title="Chọn ảnh làm Avatar" style="cursor: pointer; position: absolute;color:black; top:0px;right:30px;"></i>
                                            <i class="fa-2x fa fa-times remove-image" title="Xóa hình ảnh" data-url="<?= base_url('admin/region/remove_image') ?>" data-id="<?= $detail['id'] ?>" data-image="<?= $value ?>" data-key="<?= $key ?>" style="cursor: pointer; position: absolute;color:red; top:0px;right: 5px;"></i>
                                        </div>
                                    <?php endif ?>
                                <?php endforeach ?>
                            <?php endif ?>
                        </div> -->
                        <div class="form-group col-xs-12">
                            <label for="image">Hình ảnh cho Destination</label><br />
                            <?php if ( json_decode($detail['image']) ): ?>
                                <?php foreach (json_decode($detail['image']) as $key => $value): ?>
                                    <div class="col-sm-3 col-xs-6 remove-image-<?= $key ?> common-image-region" id="img_destination" style="position: relative;padding-right:5px;padding-left: 0px; margin-bottom: 10px;">
                                        <img src="<?php echo base_url('assets/upload/region/' . $detail['slug'] . '/' . $value) ?>" alt="Image Detail" width="100%" height="150px">
                                        <i class="fa-2x fa fa-check active-avatar" data-url="<?= base_url('admin/region/active_avatar') ?>" data-name="img_destination" data-id="<?= $detail['id'] ?>" data-image="<?= $value ?>" data-controller="region" title="Chọn ảnh làm Avatar" style="cursor: pointer; position: absolute;color:<?php echo ($detail['img_destination'] !== $value) ? 'black' : 'green'; ?>; top:0px;right:30px;"></i>
                                        <i class="fa-2x fa fa-times remove-image-region" title="Xóa hình ảnh" data-url="<?= base_url('admin/region/remove_image') ?>" data-id="<?= $detail['id'] ?>" data-image="<?= $value ?>" data-key="<?= $key ?>" style="cursor: pointer; position: absolute;color:red; top:0px;right: 5px;"></i>
                                    </div>
                                <?php endforeach ?>
                            <?php endif ?>
                        </div>
                        <div class="form-group col-xs-12">
                            <label for="image">Hình ảnh cho Blog</label><br />
                            <?php if ( json_decode($detail['image']) ): ?>
                                <?php foreach (json_decode($detail['image']) as $key => $value): ?>
                                    <div class="col-sm-3 col-xs-6 remove-image-<?= $key ?> common-image-region" id="img_blog" style="position: relative;padding-right:5px;padding-left: 0px; margin-bottom: 10px;">
                                        <img src="<?php echo base_url('assets/upload/region/' . $detail['slug'] . '/' . $value) ?>" alt="Image Detail" width="100%" height="150px">
                                        <i class="fa-2x fa fa-check active-avatar" data-url="<?= base_url('admin/region/active_avatar') ?>" data-name="img_blog" data-id="<?= $detail['id'] ?>" data-image="<?= $value ?>" data-controller="region" title="Chọn ảnh làm Avatar" style="cursor: pointer; position: absolute;color:<?php echo ($detail['img_blog'] !== $value) ? 'black' : 'green'; ?>; top:0px;right:30px;"></i>
                                        <i class="fa-2x fa fa-times remove-image-region" title="Xóa hình ảnh" data-url="<?= base_url('admin/region/remove_image') ?>" data-id="<?= $detail['id'] ?>" data-image="<?= $value ?>" data-key="<?= $key ?>" style="cursor: pointer; position: absolute;color:red; top:0px;right: 5px;"></i>
                                    </div>
                                <?php endforeach ?>
                            <?php endif ?>
                        </div>
                        <div class="form-group col-xs-12">
                            <label for="image">Hình ảnh cho Event</label><br />
                            <?php if ( json_decode($detail['image']) ): ?>
                                <?php foreach (json_decode($detail['image']) as $key => $value): ?>
                                    <div class="col-sm-3 col-xs-6 remove-image-<?= $key ?> common-image-region" id="img_event" style="position: relative;padding-right:5px;padding-left: 0px; margin-bottom: 10px;">
                                        <img src="<?php echo base_url('assets/upload/region/' . $detail['slug'] . '/' . $value) ?>" alt="Image Detail" width="100%" height="150px">
                                        <i class="fa-2x fa fa-check active-avatar" data-url="<?= base_url('admin/region/active_avatar') ?>" data-name="img_event" data-id="<?= $detail['id'] ?>" data-image="<?= $value ?>" data-controller="region" title="Chọn ảnh làm Avatar" style="cursor: pointer; position: absolute;color:<?php echo ($detail['img_event'] !== $value) ? 'black' : 'green'; ?>; top:0px;right:30px;"></i>
                                        <i class="fa-2x fa fa-times remove-image-region" title="Xóa hình ảnh" data-url="<?= base_url('admin/region/remove_image') ?>" data-id="<?= $detail['id'] ?>" data-image="<?= $value ?>" data-key="<?= $key ?>" style="cursor: pointer; position: absolute;color:red; top:0px;right: 5px;"></i>
                                    </div>
                                <?php endforeach ?>
                            <?php endif ?>
                        </div>
                        <div class="form-group col-xs-12">
                            <label for="image">Hình ảnh cho Cuisine</label><br />
                            <?php if ( json_decode($detail['image']) ): ?>
                                <?php foreach (json_decode($detail['image']) as $key => $value): ?>
                                    <div class="col-sm-3 col-xs-6 remove-image-<?= $key ?> common-image-region" id="img_cuisine" style="position: relative;padding-right:5px;padding-left: 0px; margin-bottom: 10px;">
                                        <img src="<?php echo base_url('assets/upload/region/' . $detail['slug'] . '/' . $value) ?>" alt="Image Detail" width="100%" height="150px">
                                        <i class="fa-2x fa fa-check active-avatar" data-url="<?= base_url('admin/region/active_avatar') ?>" data-name="img_cuisine" data-id="<?= $detail['id'] ?>" data-image="<?= $value ?>" data-controller="region" title="Chọn ảnh làm Avatar" style="cursor: pointer; position: absolute;color:<?php echo ($detail['img_cuisine'] !== $value) ? 'black' : 'green'; ?>; top:0px;right:30px;"></i>
                                        <i class="fa-2x fa fa-times remove-image-region" title="Xóa hình ảnh" data-url="<?= base_url('admin/region/remove_image') ?>" data-id="<?= $detail['id'] ?>" data-image="<?= $value ?>" data-key="<?= $key ?>" style="cursor: pointer; position: absolute;color:red; top:0px;right: 5px;"></i>
                                    </div>
                                <?php endforeach ?>
                            <?php endif ?>
                        </div>
                        <div class="form-group col-xs-12">
                            <label for="image">Hình ảnh cho Homepage</label><br />
                            <?php if ( json_decode($detail['image']) ): ?>
                                <?php foreach (json_decode($detail['image']) as $key => $value): ?>
                                    <div class="col-sm-3 col-xs-6 remove-image-<?= $key ?> common-image-region" id="img_homepage" style="position: relative;padding-right:5px;padding-left: 0px; margin-bottom: 10px;">
                                        <img src="<?php echo base_url('assets/upload/region/' . $detail['slug'] . '/' . $value) ?>" alt="Image Detail" width="100%" height="150px">
                                        <i class="fa-2x fa fa-check active-avatar" data-url="<?= base_url('admin/region/active_avatar') ?>" data-name="img_homepage" data-id="<?= $detail['id'] ?>" data-image="<?= $value ?>" data-controller="region" title="Chọn ảnh làm Avatar" style="cursor: pointer; position: absolute;color:<?php echo ($detail['img_homepage'] !== $value) ? 'black' : 'green'; ?>; top:0px;right:30px;"></i>
                                        <i class="fa-2x fa fa-times remove-image-region" title="Xóa hình ảnh" data-url="<?= base_url('admin/region/remove_image') ?>" data-id="<?= $detail['id'] ?>" data-image="<?= $value ?>" data-key="<?= $key ?>" style="cursor: pointer; position: absolute;color:red; top:0px;right: 5px;"></i>
                                    </div>
                                <?php endforeach ?>
                            <?php endif ?>
                        </div>
                        <div class="form-group col-xs-12">
                            <div class="form-group col-xs-12">
                                <?php
                                echo form_label('Hình ảnh', 'image');
                                echo form_error('image');
                                echo form_upload('image[]', set_value('image'), 'class="form-control" multiple');
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

                        <div>
                            <ul class="nav nav-pills nav-justified" role="tablist">
                                <li role="presentation" class="active">
                                    <a href="#language_vi" aria-controls="" role="tab" data-toggle="tab">
                                        <span class="badge">1</span> Tiếng Việt
                                    </a>
                                </li>
                                <li role="presentation" class="">
                                    <a href="#language_en" aria-controls="" role="tab" data-toggle="tab">
                                        <span class="badge">2</span> Tiếng Anh
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
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-xs-12">
                            <a href="javascript:history.back()" class="btn btn-default">Quay lại</a>
                            <?php echo form_submit('submit', 'Cập nhật', 'class="btn btn-primary pull-right margin-right-xs" '); ?>
                        </div>
                        <?php echo form_close(); ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
