<%--
  Created by IntelliJ IDEA.
  User: TUYET NGAN
  Date: 1/21/2021
  Time: 5:12 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <link rel="stylesheet" href="style.css">

</head>
<body class="hold-transition sidebar-mini" >
<div class="wrapper">
    <jsp:include page="Ad_header.jsp"></jsp:include>
    <jsp:include page="Ad_header1.jsp"></jsp:include>

    <div class="content-wrapper">
    <!-- Content Header (Page header) -->
        <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Quản lí User</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Quản lí User</li>
                        <a href="themtaikhoan1.jsp" class="breadcrumb-item active">Thêm User</a>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
        </section>

    <!-- Main content -->
    <section class="content">
        <div class="card">
            <div class="card-header">

                <h3 class=" chinhsua">Danh sách user</h3>

            </div>

            <!-- /.card-header -->
            <div class="card-body">
                <div id="jsGrid1">
                    <table id="example2" class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Tên User</th>
                            <th>Quyền hạn</th>
                            <th>Địa chỉ</th>
                            <th>Email</th>
                            <th>Các thao tác</th>
                            <th>Xóa</th>

                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${listad}" var="f">
                        <tr>
                            <td>${f.userID}</td>
                            <td>${f.name}</td>
                            <td>${f.role}</td>
                            <td>${f.address}</td>
                            <td>${f.email}</td>
                            <td><a href="#">Chi tiết</a></td>
                            <td><a href="deleteUser?did=${f.userID}">Xóa</a></td>

<%--                            <td><a href="loadProduct?pid=${f.ID}">Sửa</a>/<a href="delete?pid=${f.ID}">Xoá</a>/<a href="themsanpham.jsp">Thêm</a></td>--%>
                        </tr>
                        </c:forEach>


                        </tbody>
                    </table>
                </div>
                <div class="row sua1">

                    <div class="col-sm-12 col-md-7">
                        <div class="dataTables_paginate paging-simple-numbers" id="example2_pagination">
                            <ul class="wn__pagination">
                                <c:forEach begin ="1" end="${endPage}" var="dept">
                                    <li ><a href="dsuser?index=${dept}">${dept}</a></li>
                                </c:forEach>

                            </ul>


                            </ul>

                        </div>

                    </div>


                </div>



            </div>
        </div>
        <!-- /.card-body -->

<!-- /.card -->
</section>

    </div>
    <jsp:include page="Adfooter.jsp"></jsp:include>
</div>

</body>
</html>
,