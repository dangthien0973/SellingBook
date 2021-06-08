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
                    <h1>Quản lí sản phẩm</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Quản lí sản phẩm</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
        </section>

    <!-- Main content -->
    <section class="content">
        <div class="card">
            <div class="card-header">

                <h3 class=" chinhsua">Danh sách sản phẩm</h3>

            </div>

            <!-- /.card-header -->
            <div class="card-body">
                <div id="jsGrid1">
                    <table id="example2" class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <th>Mã sản phẩm</th>
                            <th>Tên sản phẩm</th>
                            <th>Hình ảnh</th>


                            <th>Sửa</th>
                            <th>Xóa</th>

                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${listad}" var="f">
                        <tr>
                            <td>${f.ID}</td>
                            <td>${f.name}</td>
                            <td><img src = "${f.img}" width = "60px" height = "60px" ></td>

                            <td><a href="loadProduct?pid=${f.ID}">Sửa</a></td>
                            <td><a href="delete?pid=${f.ID}">Xóa</a></td>
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
                                    <li ><a href="dssp?index=${dept}">${dept}</a></li>
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