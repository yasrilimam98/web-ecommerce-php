<?php 
session_start();
//koneksi ke database
  $koneksi= new mysqli("localhost","root","","ylnj-project");

if(!isset($_SESSION['admin']))
{
    echo "<script>alert('Anda harus login');</script>";
    echo "<script>location='login.php';</script>";
    header('location:login.php');
    exit();
}

?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Passion.cloth</title>

             <link href="assets/css/bootstrap.css" rel="stylesheet" />
    
             <link href="assets/css/font-awesome.css" rel="stylesheet" />
   
             <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
       
             <link href="assets/css/custom.css" rel="stylesheet" />
     
             <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php">Passion.Cloth</a> 
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"> &nbsp; <a href="index.php?halaman=logout" class="btn btn-danger square-btn-adjust">Logout</a> </div>
        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                   <img src="assets/img/logo5.jpg" class="user-image img-responsive"/>
					</li> 
				
					
                    <li><a  href="index.php"><i class="fa fa-dashboard fa-3x"></i> Home</a></li>
                    <li><a  href="index.php?halaman=produk"><i class="fa fa-dashboard fa-3x"></i> Produk</a></li>
                    <li><a  href="index.php?halaman=pembelian"><i class="fa fa-dashboard fa-3x"></i> Pembelian</a></li>
                    <li><a  href="index.php?halaman=pelanggan"><i class="fa fa-dashboard fa-3x"></i> Pelanggan</a></li>
                    <li><a  href="index.php?halaman=logout"><i class="fa fa-dashboard fa-3x"></i> Logout</a></li></ul>
               
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <?php 
                if (isset($_GET['halaman']))
                {
                    if ($_GET['halaman']=="produk")
                    {
                        include 'produk.php';
                    }
                    elseif ($_GET['halaman']=="pembelian")
                    {
                        include 'pembelian.php';
                    }
                    elseif ($_GET['halaman']=="pelanggan")
                    {
                        include 'pelanggan.php';
                    }
                   
                    elseif ($_GET['halaman']=="Logout")
                    {
                        include 'Logout.php';
                    }
                       elseif ($_GET['halaman']=="detail")
                    {
                        include 'detail.php';
                    }
                    elseif ($_GET['halaman']=="tambahproduk") 
                    {
                        include 'tambahproduk.php';
                    }
                    elseif ($_GET['halaman']=="hapusproduk") 
                    {
                        include 'hapusproduk.php';
                    }
                    elseif ($_GET['halaman']=="ubahproduk") 
                    {
                        include 'ubahproduk.php';
                    }
                    elseif ($_GET['halaman']=="logout") 
                    {
                        include 'logout.php';
                    }
                }
                else
                {
                    include 'home.php';
                }

                 ?>
            </div>
             
            </div>
         
        </div>
   
    <script src="assets/js/jquery-1.10.2.js"></script>
    
    <script src="assets/js/bootstrap.min.js"></script>
   
    <script src="assets/js/jquery.metisMenu.js"></script>
    
     <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>
      
    <script src="assets/js/custom.js"></script>
    
   
</body>
</html>
