<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="HIGH-FIVE">

  <title>Fibonacci Calculator</title>

  <!-- Custom fonts for this template-->
  <!--    <link href="css/font-awesome_all.min.css" rel="stylesheet" type="text/css">-->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.css" rel="stylesheet">

</head>

<body id="page-top">

<!-- Begin Page Content -->
<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <!-- DataTales Example -->
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">Wybrany element ciągu to: ${element}</h6>
    </div>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
          <thead>
          <tr>
            <th>Kolejne liczby ciągu:</th>
          </tr>
          </thead>
          <tfoot>
          <tbody>
          <#list fibonacci_list as fibonacci>
            <tr>
              <td>${fibonacci}</td>
          </#list>
          </tbody>
        </table>
      </div>
    </div>
  </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

  <!-- /.container-fluid -->
</div>
<!-- End of Main Content -->

<!-- Footer -->
<footer class="sticky-footer bg-white">
  <div class="container my-auto">
    <div class="copyright text-center my-auto">
      <span>Copyright &copy; Maciej Bandurski 2020</span>
    </div>
  </div>
</footer>
<!-- End of Footer -->

<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
  <i class="fas fa-angle-up"></i>
</a>


<!-- Bootstrap core JavaScript-->
<!--  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>-->
<script src="js/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
<!--<script src="js/bootstrap.bundle.min.js"></script>-->

<!-- Core plugin JavaScript-->
<!--  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>-->
<script src="js/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<!--    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>-->
<script src="js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<!-- <script src="js/demo/chart-area-demo.js"></script> -->
<script src="js/demo/chart-bar-demo.js"></script>
<script src="js/demo/chart-pie-demo.js"></script>

</body>

</html>
