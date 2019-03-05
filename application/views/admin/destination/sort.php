<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Sắp xếp tỉnh trong 
            <small>
                Điểm đến
            </small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('admin') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li><a href="<?= base_url('admin/destination') ?>"><i class="fa fa-dashboard"></i> Danh sách điểm đến</a></li>
            <li class="active">Sắp xếp tỉnh trong điểm đến</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
			<div class="col-md-12">
                <div class="box">
                    <div class="box-header">
                        <ul class="nav nav-tabs" role="tablist" id="nav-product">

                    	<?php foreach ($result as $key => $value): ?>
	                        <li role="presentation" class="<?php echo $key == 0 ? 'active' : '' ?>"><a href="#<?php echo $value['slug'] ?>" class="btn btn-primary" aria-controls="<?php echo $value['slug'] ?>" role="tab" data-toggle="tab"><?php echo $value['title_vi'] ?></a></li>
                    	<?php endforeach ?>
                        </ul>
                    </div>
                    <div class="tab-content">
                    	<?php foreach ($result as $key => $value): ?>
	                        <div role="tabpanel" class="tab-pane fade<?php echo $key == 0 ? ' in active' : '' ?>" id="<?php echo $value['slug'] ?>">
	                            <div class="box-body">
	                            	<div class="col-lg-12 numberlist" style="margin-top: 10px;padding: 0px;">
                        				<ol class="sortable" style="padding: 0px;">
											<?php foreach ($value['province'] as $k => $val): ?>
	                							<li class="treeview" id="<?php echo ($k + 1) . '-' . $val['id'] ?>" style="width: 100%;background: green; padding: 10px;color:white; margin-bottom: 3px;">
	                            					<strong class="col-md-9" style="width: 100%;">
	                            						<a style="color:white;width: 100%;" href="javascript:void(0)"><?php echo $val['title_vi'] ?></a>
	                            					</strong>
	                            				</li>
											<?php endforeach ?>
                        				</ol>
                        			</div>
	                            </div>
	                        </div>
                    	<?php endforeach ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>