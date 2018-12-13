
<div class="content-wrapper" id="create-product-view">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Cập nhật
            <small>
                tính năng
            </small>
        </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <?php if ($this->session->flashdata('message_error')): ?>
                    <div class="alert alert-warning alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <h4><i class="icon fa fa-warning"></i> Alert!</h4>
                        <?php echo $this->session->flashdata('message_error'); ?>
                    </div>
                <?php endif ?>
                <?php
                    echo form_open_multipart('', array('class' => 'form-horizontal','id' => 'register-form'));
                ?>
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" id="home">
                        <div class="box box-default">
                            <div class="box-body">
                                <div class="col-xs-12">
                                    <h4 class="box-title">Thông tin cơ bản</h4>
                                </div>
                                <div class="row">
                                    <span><?php echo $this->session->flashdata('message'); ?></span>
                                </div>

                                <div class="col-xs-12">
                                    <div>
                                        <i class="fa-3x <?php echo $detail['icon']; ?>"></i>
                                    </div>
                                    <?php
                                        echo form_label("Icon cho tính năng <a href='https://www.w3schools.com/icons/fontawesome_icons_webapp.asp' target ='_blank'>Click để tìm icon Font Awesome</a><i> (Lưu ý chỉ sử dụng icon fa)</i>", 'icon');
                                        echo form_error('icon');
                                        echo form_input('icon', $detail['icon'], 'class="form-control" ');
                                    ?>
                                </div>
                                <div class="col-xs-12" style="padding-top: 5px;"> 
                                    <ul class="nav nav-pills nav-justified" role="tablist">
                                        <?php $i = 0; ?>
                                        <?php foreach ($page_languages as $key => $value): ?>
                                            <li role="presentation" class="<?php echo ($i == 0)? 'active' : '' ?>">
                                                <a href="#<?php echo $key ?>" aria-controls="<?php echo $key ?>" role="tab" data-toggle="tab">
                                                    <span class="badge"><?php echo $i + 1 ?></span> <?php echo $value ?>
                                                </a>
                                            </li>
                                        <?php $i++; ?>
                                        <?php endforeach ?>
                                    </ul>
                                </div>
                                <div class="tab-content">
                                    <?php foreach ($page_languages as $key => $value): ?>
                                        <div role="tabpanel" class="tab-pane fade <?php echo ($i == count($page_languages))? 'active in' : '' ?>" id="<?php echo $key ?>">
                                            <div class="col-xs-12" style="margin-bottom: 5px;">
                                                <?php
                                                    echo form_label("Tên tính năng", $key);
                                                    echo form_error($key);
                                                    echo form_input($key, $detail[$key], 'class="form-control" ');

                                                    echo form_label("Mô tả tính năng", 'content_'. $key);
                                                    echo form_error('content_'. $key);
                                                    echo form_textarea('content_'. $key, $detail['content_'.$key], 'class="tinymce-area form-control" rows="5"');
                                                ?>
                                            </div>
                                        </div>
                                    <?php $i--; ?>
                                    <?php endforeach ?>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="box box-default">
                        <div class="box-body">
                            <div class="col-xs-12">
                            <ul class="nav nav-tabs" role="tablist" id="nav-product">
                                <a class="btn btn-primary" id="go-back" onclick="history.back(-1);" >Go back</a>
                                <input type="submit" name="submit_shared" id="submit-shared" value="OK" class="btn btn-primary" style="float: right;">
                            </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </section>
</div>