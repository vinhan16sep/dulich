<?php
//if($this->ion_auth->logged_in()) {
//?>
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="<?php echo site_url('assets/img/admin/user2-160x160.jpg') ?>" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>
                        <?php
                            if (  $this->ion_auth->logged_in()  ) {
                                echo 'Hello  ' . $this->ion_auth->user()->row()->first_name . $this->ion_auth->user()->row()->last_name;
                            }
                        ?>
                    </p>
                    <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                </div>
            </div>
            <!-- search form -->
            <form action="#" method="get" class="sidebar-form hidden">
                <div class="input-group">
                    <input type="text" name="q" class="form-control" placeholder="Search...">
                    <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
                </div>
            </form>
            <!-- /.search form -->
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu" data-widget="tree">
                <li class="header">THÔNG TIN CHUNG</li>
                <li class="<?php echo ($this->uri->segment(2) == '')? 'active' : '' ?>">
                    <a href="<?php echo base_url('admin') ?>">
                        <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                    </a>
                </li>
                <li class="<?php echo ($this->uri->segment(2) == 'banner')? 'active' : '' ?>">
                    <a href="<?php echo base_url('admin/banner') ?>">
                        <i class="fa fa-cubes"></i> <span>Banner trang chủ</span>
                    </a>
                </li>
                <li class="treeview <?php echo ($this->uri->segment(2) == 'about')? 'menu-open' : '' ?>">
                    <a href="">
                        <i class="fa fa-user-circle-o"></i>
                        <span>Về chúng tôi</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu" style="<?php echo ($this->uri->segment(2) == 'about')? 'display:block' : 'display:none' ?>">
                        <li class="<?php echo ($this->uri->segment(3) == 'bai-viet')? 'active' : '' ?>"><a href="<?php echo base_url('admin/about/bai-viet') ?>"><i class="fa fa-newspaper-o"></i>Bài viết mô tả</a></li>
                        <li class="<?php echo ($this->uri->segment(3) == 'dich-vu')? 'active' : '' ?>"><a href="<?php echo base_url('admin/about/dich-vu') ?>"><i class="fa fa-gears"></i> Dịch vụ</a></li>
                        <li class="<?php echo ($this->uri->segment(3) == 'team')? 'active' : '' ?>"><a href="<?php echo base_url('admin/about/team') ?>"><i class="fa fa-group"></i> Đội ngũ</a></li>
                        <li class="<?php echo ($this->uri->segment(3) == 'banner')? 'active' : '' ?>"><a href="<?php echo base_url('admin/about/banner') ?>"><i class="fa fa-desktop"></i> Banner</a></li>
                    </ul>
                </li>
                <li class="<?php echo ($this->uri->segment(2) == 'region')? 'active' : '' ?>">
                    <a href="<?php echo base_url('admin/region') ?>">
                        <i class="fa fa-globe" aria-hidden="true"></i> <span>Vùng miền</span>
                    </a>
                </li>
                <li class="<?php echo ($this->uri->segment(2) == 'province')? 'active' : '' ?>">
                    <a href="<?php echo base_url('admin/province') ?>">
                        <i class="fa fa-map" aria-hidden="true"></i> <span>Tỉnh / Thành Phố</span>
                    </a>
                </li>
                <li class="<?php echo ($this->uri->segment(2) == 'cuisine_category')? 'active' : '' ?>">
                    <a href="<?php echo base_url('admin/cuisine_category') ?>">
                        <i class="fa fa-newspaper-o"></i> <span>Danh mục món ăn</span>
                    </a>
                </li>
                <li class="<?php echo ($this->uri->segment(2) == 'cuisine')? 'active' : '' ?>">
                    <a href="<?php echo base_url('admin/cuisine') ?>">
                        <i class="fa fa-cutlery" aria-hidden="true"></i> <span>Món ăn</span>
                    </a>
                </li>
                <li class="<?php echo ($this->uri->segment(2) == 'destination')? 'active' : '' ?>">
                    <a href="<?php echo base_url('admin/destination') ?>">
                        <i class="fa fa-street-view" aria-hidden="true"></i> <span>Điểm đến</span>
                    </a>
                </li>
                <li class="<?php echo ($this->uri->segment(2) == 'events')? 'active' : '' ?>">
                    <a href="<?php echo base_url('admin/events') ?>">
                        <i class="fa fa-calendar" aria-hidden="true"></i> <span>Sự kiện</span>
                    </a>
                </li>
                <li class="<?php echo ($this->uri->segment(2) == 'blog')? 'active' : '' ?>">
                    <a href="<?php echo base_url('admin/blog') ?>">
                        <i class="fa fa-address-book" aria-hidden="true"></i> <span>Bài viết</span>
                    </a>
                </li>
                <!-- <li class="">
                    <a href="<?php echo base_url('admin/config_contact') ?>">
                        <i class="fa fa-inbox"></i> <span>Contact</span>
                    </a>
                </li> -->
                <li class="header">QUẢN LÝ TÀI KHOẢN</li>
                <li>
                    <a href="<?php echo base_url('admin/user/change_password') ?>">
                        <i class="fa fa-refresh" aria-hidden="true"></i> <span>Đổi Mật Khẩu</span>
                    </a>
                </li>
                <?php if ($this->ion_auth->is_admin()===TRUE): ?>
                    <li>
                    <a href="<?php echo base_url('admin/user') ?>">
                        <i class="fa fa-users" aria-hidden="true"></i> <span>Quản lý tài khoản</span>
                    </a>
                </li>
                    <li>
                        <a href="<?php echo base_url('admin/user/register') ?>">
                            <i class="fa fa-user-plus" aria-hidden="true"></i> <span>Tạo tài khoản</span>
                        </a>
                    </li>
                <?php endif ?>









                
<!-- 
                <li class="treeview">
                    <a href="">
                        <i class="fa fa-drivers-license-o"></i>
                        <span>Works/ Portfolio</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="<?php echo base_url('admin/works') ?>"><i class="fa fa-desktop"></i> Overview</a></li>
                        <li><a href="<?php echo base_url('admin/works/field') ?>"><i class="fa fa-filter"></i> Field of Works</a></li>
                        <li><a href="<?php echo base_url('admin/works/works') ?>"><i class="fa fa-list"></i> List of Works</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="">
                        <i class="fa fa-cubes"></i>
                        <span>Products</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="<?php echo base_url('admin/products') ?>"><i class="fa fa-desktop"></i> Overview</a></li>
                        <li class="treeview">
                            <a href=""><i class="fa fa-filter"></i> Category</a>
                            <ul class="treeview-menu">
                                <li><a href="<?php echo base_url('admin/products/category_1') ?>"><i class="fa fa-circle-o"></i> Category I</a></li>
                                <li><a href="<?php echo base_url('admin/products/category_2') ?>"><i class="fa fa-circle-o"></i> Category II</a></li>
                            </ul>
                        </li>
                        <li><a href="<?php echo base_url('admin/products/products') ?>"><i class="fa fa-list"></i> List of Products</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="">
                        <i class="fa fa-file-text-o"></i>
                        <span>Order</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="<?php echo base_url('admin/orders/') ?>"><i class="fa fa-desktop"></i> Overview</a></li>
                        <li><a href="<?php echo base_url('admin/orders/pending') ?>"><i class="fa fa-refresh"></i> Pending Orders</a></li>
                        <li><a href="<?php echo base_url('admin/orders/completed') ?>"><i class="fa fa-check-square-o"></i> Completed Orders</a></li>
                        <li><a href="<?php echo base_url('admin/orders/cancelled') ?>"><i class="fa fa-window-close-o"></i>Cancelled Orders </a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="">
                        <i class="fa fa-newspaper-o"></i>
                        <span>Blogs</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="<?php echo base_url('admin/blogs') ?>"><i class="fa fa-desktop"></i> Overview</a></li>
                        <li class="treeview">
                            <a href=""><i class="fa fa-filter"></i> Category</a>
                            <ul class="treeview-menu">
                                <li><a href="<?php echo base_url('admin/blogs/category_1') ?>"><i class="fa fa-circle-o"></i> Category I</a></li>
                                <li><a href="<?php echo base_url('admin/blogs/category_2') ?>"><i class="fa fa-circle-o"></i> Category II</a></li>
                            </ul>
                        </li>
                        <li><a href="<?php echo base_url('admin/blogs/blogs') ?>"><i class="fa fa-list"></i> List of blogs</a></li>
                    </ul>
                </li>
                <li>
                    <a href="<?php echo base_url('admin/messages') ?>">
                        <i class="fa fa-inbox"></i> <span>Messages</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo base_url('admin/subscribe') ?>">
                        <i class="fa fa-envelope-o"></i> <span>Subscribe</span>
                    </a>
                </li>
                <li class="header">DOCUMENTATION</li>
                <li>
                    <a href="<?php echo base_url('admin/documentation') ?>">
                        <i class="fa fa-book"></i> <span>Documentation</span>
                    </a>
                </li> -->

            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>
<?php //} ?>



