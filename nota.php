<?php
session_start();
include 'koneksi.php'; 
?>

<!DOCTYPE html>
<html>
<head>
	<title>Nota pembelian</title>
	<link rel="stylesheet" href="admin/assets/css/bootstrap.css">
</head>
<body>

<?php include 'menu.php'; ?>

	<section class="kontent">
		<div class="container">

<h2>Detail Pembelian</h2>
<?php 
$ambil = $koneksi->query("SELECT * FROM pembelian JOIN pelanggan ON pembelian.id_pelanggan=pelanggan.id_pelanggan WHERE pembelian.id_pembelian='$_GET[id]'");
$detail = $ambil->fetch_assoc();
 ?>

<strong><?php echo $detail['nama_pelanggan']; ?></strong> <br>
 	<p>
 		<?php echo $detail['telepon_pelanggan']; ?> <br>
 		<?php echo $detail ['email_pelanggan']; ?> 
 	</p>

 	<p>
 		tanggal :<?php echo $detail['tanggal_pembelian']; ?> <br>
 		Total :<?php echo $detail['total_pembelian']; ?> 
 	</p>

 	<table class= "table table-bordered">
 		<thead> 
 			<tr>
 				<th>no</th>
 				<th>nama produk</th>
 				<th>harga</th>
 				<th>jumlah</th>
 				<th>subtotal</th>
 			
 		</tr>
 	</thead>
 	<tbody>
 		<?php $nomor=1; ?>
 		<?php $ambil=$koneksi->query("SELECT * FROM pembelian_produk JOIN produk ON pembelian_produk.id_produk
 		WHERE pembelian_produk.id_pembelian='$_GET[id]'"); ?>
 		<?php while($pecah=$ambil->fetch_assoc()){ ?>
 		<tr>
 			<td><?php echo $nomor; ?></td>
 			<td><?php echo $pecah['nama_produk'];?></td>
 			<td><?php echo $pecah['harga_produk'];?></td>
 			<td><?php echo $pecah['jumlah'];?></td>
 			<td>
 				<?php echo $pecah['harga_produk']*$pecah['jumlah']; ?>
 			</td>
 		</tr>
 		<?php $nomor++; ?>
 		<?php } ?>
 	</tbody>
 </table>

 	<div class="row">
 		<div class="col-md-7">
 			<div class="alert alert-info">
 				<p>
 					Silahkan melakukan pembayaran Rp. <?php echo number_format($detail['total_pembelian']); ?> ke <br>
 					<strong>BANK BNI 057837823 AN. Yasril Imam</strong>



		</div>
	</section>
</body>
</html>