
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 3 | jsGrid</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="admin/plugins/summernote/summernote-bs4.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="admin/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- jsGrid -->
  <link rel="stylesheet" href="admin/plugins/jsgrid/jsgrid.min.css">
  <link rel="stylesheet" href="admin/plugins/jsgrid/jsgrid-theme.min.css">
  <link rel="stylesheet" href="form1.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="admin/dist/css/adminlte.min.css">

  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  <jsp:include page="Ad_header.jsp"></jsp:include>
  <jsp:include page="Ad_header1.jsp"></jsp:include>


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Thêm sản phẩm</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item"><a href="#">Quản lí sản phẩm</a></li>
              <li class="breadcrumb-item active">Thêm sản phẩm</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="card">
        <!-- <div class="col-md-9"> -->
        <div class="card-primary card-outline">
          <div class="card-header">
            <h3 class="card-title">Nhập thông tin sản phẩm mới</h3>
          </div>


          <div class="sub-main-w3">
            <form action="" method="get">
              <div class="form-style-agile">
                <label>Tên sản phẩm</label>
                <div class="pom-agile">
                  <input name="name" type="text" required="" >

                </div>
              </div>

              <div class="form-style-agile">

                <label>Thể loại</label>
                <div class="pom-agile">
                  <select class="agile-month" name="category">
                    <c:forEach items="${listCC}" var="o" >
                      <option  value="${o.cid}">${o.cname}</option>
                    </c:forEach>

                  </select>
                </div>

              </div>
              <div class="form-style-agile">
                <label>Giá</label>
                <div class="pom-agile">
                  <input  name="gia" type="text" id="gia" required="">

                </div>
              </div>
              <div class="form-style-agile">
                <label>Hình ảnh</label>
                <div class="pom-agile">
                  <input name="img" type="file" required="">

                </div>
              </div>



              <div class="form-style-agile">

                <label>Mô tả</label>
                <div class="pom-agile">
                    <textarea name="mota" type="text" required="'" >

                    </textarea>
                </div>
              </div>
                <div class="clear"></div>
                <div class="card-footer">
                  <div class="float-right">

                    <button type="submit" class="btn btn-primary" value="add"><i class="fas fa-plus-circle"></i> Thêm sản phẩm</button>
                  </div>
                  <button type="reset" class="btn btn-default"><i class="fas fa-times"></i> Huỷ</button>
                </div>
            </form>



          </div>



        </div>
        <!-- /.card-header -->


      </div>
      <!-- /.card-body -->


  <!-- /.card -->

    </section>


</div>
<!-- /.content -->
</div>

    <!-- Content Header (Page header) -->


  
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 3.0.5
    </div>
    <strong>Copyright &copy; 2014-2019 <a href="http://adminlte.io">AdminLTE.io</a>.</strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- jsGrid -->
<script src="../../plugins/jsgrid/demos/db.js"></script>
<script src="../../plugins/jsgrid/jsgrid.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
<script src="../../plugins/summernote/summernote-bs4.min.js"></script>
<!-- Page Script -->
<script>
  $(function () {
    //Add text editor
    $('#compose-textarea').summernote()
  })
</script>

<!-- page script -->
<!-- <script>
  $(function () {
    $("#jsGrid1").jsGrid({
        height: "100%",
        width: "100%",
 
        sorting: true,
        paging: true,
 
        data: db.clients,
 
        fields: [
            { name: "Name", type: "text", width: 150 },
            { name: "Age", type: "number", width: 50 },
            { name: "Address", type: "text", width: 200 },
            { name: "Country", type: "select", items: db.countries, valueField: "Id", textField: "Name" },
            { name: "Married", type: "checkbox", title: "Is Married" }
        ]
    });
  });
</script> -->

</body>
</html>
