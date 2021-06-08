<%--
  Created by IntelliJ IDEA.
  User: TUYET NGAN
  Date: 1/21/2021
  Time: 4:55 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 3 | ChartJS</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="admin/plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="admin/dist/css/alt/adminlte.core.min.css">
    <link rel="stylesheet" href="admin/dist/css/adminlte.css.map">
   



    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>

    <aside class="main-sidebar sidebar-dark-primary elevation-4">
        <!-- Brand Logo -->
        <a href="../../index.html" class="brand-link">
            <img src="../../dist/img/AdminLTELogo.png"
                 alt="AdminLTE Logo"
                 class="brand-image img-circle elevation-3"
                 style="opacity: .8">
            <span class="brand-text font-weight-light">AminBookStore</span>
        </a>

        <!-- Sidebar -->
        <div class="sidebar">
            <!-- Sidebar user panel (optional) -->
            <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                <div class="image">
                    <img src="../../dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
                </div>
                <div class="info">
                    <a href="#" class="d-block">Alexander Pierce</a>
                </div>
            </div>

            <!-- Sidebar Menu -->
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
                         with font-awesome or any other icon font library -->
                    <li class="nav-item has-treeview menu-open">
                        <a href="Ad_index.jsp" class="nav-link active" >
                            <!--  tạo hoạt động -->
                            <i class="nav-icon fas fa-tachometer-alt"></i>
                            <p>
                                Trang chính
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>

                    </li>

<%--                    <li class="nav-item has-treeview">--%>
<%--                        <a href="../../pages/charts/chartjs.html" class="nav-link">--%>
<%--                            <i class="nav-icon fas fa-chart-pie"></i>--%>
<%--                            <p>--%>
<%--                                Doanh số--%>
<%--                                <i class="right fas fa-angle-left"></i>--%>
<%--                            </p>--%>
<%--                        </a>--%>

<%--                    </li>--%>

                    <!-- Sửa từ đây -->
                    <li class="nav-item has-treeview">
                        <a href="dsuser" class="nav-link">
                            <i class="nav-icon fa fa-address-card-o " aria-hidden="true" ></i></far>
                            <p>
                                Quản lí tài khoản
                                <i class="fas fa-angle-left right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="dsuser" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Danh sách tài khoản</p>
                                </a>
                            </li>


                        </ul>
                    </li>
                    <li class="nav-item has-treeview">
                        <a href="dssp" class="nav-link">
                            <i class="nav-icon fas fa-table"></i>
                            <p>
                                Quản lí sản phẩm
                                <i class="fas fa-angle-left right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="dssp" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <a href="dssp"> Danh sách sản phẩm </a>
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="../../pages/tables/themsanpham.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Thêm sản phẩm</p>
                                </a>
                            </li>

                        </ul>
                    </li>
<%--                    <li class="nav-item has-treeview">--%>
<%--                        <a href="#" class="nav-link">--%>
<%--                            <i class="nav-icon fas fa-table"></i>--%>
<%--                            <p>--%>
<%--                                Quản lí đơn hàng--%>
<%--                                <i class="fas fa-angle-left right"></i>--%>
<%--                            </p>--%>
<%--                        </a>--%>
<%--                        <ul class="nav nav-treeview">--%>
<%--                            <li class="nav-item">--%>
<%--                                <a href="../../pages/tables/danhsachdonhang.html" class="nav-link">--%>
<%--                                    <i class="far fa-circle nav-icon"></i>--%>
<%--                                    <p>Danh sách đơn hàng</p>--%>
<%--                                </a>--%>
<%--                            </li>--%>
<%--                            <!-- <li class="nav-item">--%>
<%--                              <a href="../../pages/tables/themdonhang.html" class="nav-link">--%>
<%--                                <i class="far fa-circle nav-icon"></i>--%>
<%--                                <p></p>--%>
<%--                              </a>--%>
<%--                            </li>--%>
<%--                            -->--%>
<%--                        </ul>--%>
<%--                    </li>--%>
                    <li class="nav-item has-treeview">
                        <a href="addsp" class="nav-link">
                            <i class="nav-icon fas fa-table"></i>
                            <p>
                               Thêm Sản phẩm

                                <i class="fas fa-angle-left right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="themsanpham.jsp" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Danh sách các tác giả</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="themsanpham.jsp" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Thêm tác giả</p>
                                </a>
                            </li>

                        </ul>
                    </li>

                    <!-- <li class="nav-header">EXAMPLES</li> -->
                    <!-- <li class="nav-item">
                      <a href="pages/calendar.html" class="nav-link">
                        <i class="nav-icon far fa-calendar-alt"></i>
                        <p>
                          Calendar
                          <span class="badge badge-info right">2</span>
                        </p>
                      </a>
                    </li> -->
                    <!-- <li class="nav-item">
                      <a href="pages/gallery.html" class="nav-link">
                        <i class="nav-icon far fa-image"></i>
                        <p>
                          Gallery
                        </p>
                      </a>
                    </li> -->
                    <li class="nav-item has-treeview">
                        <a href="Admin_loadLH" class="nav-link">
                            <i class="nav-icon far fa-envelope"></i>
                            <p>
                                Quản lí hòm thư
                                <i class="fas fa-angle-left right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="../../pages/mailbox/mailbox.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Danh sách mail</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="../../pages/mailbox/compose.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Gửi Mail</p>
                                </a>
                            </li>
                            <!-- <li class="nav-item">
                              <a href="../../pages/mailbox/read-mail.html" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Read</p>
                              </a>
                            </li> -->
                        </ul>
                    </li>
                    <li class="nav-item has-treeview">
                        <a href="Ad_blog" class="nav-link">
                            <i class="nav-icon far fa-edit"></i>
                            <p>
                                Quản lí Blog
                                <i class="fas fa-angle-left right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="pages/tables/danhsachblog.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Danh sách cá blog</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="../../pages/tables/thembaiviet.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Thêm bài viết</p>
                                </a>
                            </li>

                        </ul>
                    </li>
<%--                    <li class="nav-item has-treeview">--%>
<%--                        <a href="#" class="nav-link">--%>
<%--                            <i class="nav-icon far fa-plus-square"></i>--%>
<%--                            <p>--%>
<%--                                Quản lí admin--%>
<%--                                <i class="fas fa-angle-left right"></i>--%>
<%--                            </p>--%>
<%--                        </a>--%>
<%--                        <ul class="nav nav-treeview">--%>
<%--                            <li class="nav-item">--%>
<%--                                <a href="pages/tables/danhsachadmin.html" class="nav-link">--%>
<%--                                    <i class="far fa-circle nav-icon"></i>--%>
<%--                                    <p></p>--%>
<%--                                </a>--%>
<%--                            </li>--%>

<%--                            <li class="nav-item">--%>
<%--                                <a href="pages/tables/danhsachadmin.html" class="nav-link">--%>
<%--                                    <i class="far fa-circle nav-icon"></i>--%>
<%--                                    <p>Danh sách các admin</p>--%>
<%--                                </a>--%>
<%--                            </li>--%>
<%--                            <li class="nav-item">--%>
<%--                                <a href="quenmk.jsp" class="nav-link">--%>
<%--                                    <i class="far fa-circle nav-icon"></i>--%>
<%--                                    <p>Quên mật khẩu</p>--%>
<%--                                </a>--%>
<%--                            </li>--%>


                        </ul>
<%--                    </li>--%>
<%--                    <li class="nav-item has-treeview">--%>
<%--                        <a href="dangnhap.jsp" class="nav-link">--%>
<%--                            <i class="nav-icon  fas fa-sign-in-alt"></i>--%>
<%--                            <p>--%>
<%--                                Đăng nhập--%>
<%--                            </p>--%>
<%--                        </a>--%>
<%--                    </li>--%>
                    <li class="nav-item has-treeview">
                        <a href="XuLyDangXuat" class="nav-link">
                            <i class="nav-icon  fas fa-sign-out-alt"></i>
                            <p>
                                Đăng xuất

                            </p>
                        </a>
                    </li>


                </ul>
            </nav>
            <!-- /.sidebar-menu -->
        </div>
        <!-- /.sidebar -->
    </aside>

</body>
</html>
