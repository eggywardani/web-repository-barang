<?php
include '../dbconnect.php';
$select = explode(".", $_POST["id"]);

$nama = $select[1];
$id = $select[0];
$rak = $_POST['rak'];
$masuk = $_POST['masuk'];
$tanggal_masuk = $_POST['tanggal_masuk'];
$keluar = $_POST['keluar'];
$tanggal_keluar = $_POST['tanggal_keluar'];
$jumlah = $_POST['masuk'] - $_POST['keluar'];

$query = mysqli_query($conn, "INSERT INTO `sstock_brg` (`idx`,`id_barang`, `nama`, `rak`, `masuk`, `tanggal_masuk`, `keluar`, `tanggal_keluar`, `jumlah`) VALUES (NULL,'$id', '$nama', '$rak', '$masuk', '$tanggal_masuk', '$keluar', '$tanggal_keluar', '$jumlah');");

if ($query) {

  echo " <div class='alert alert-success'>
      <strong>Success!</strong> Redirecting you back in 1 seconds.
    </div>
  <meta http-equiv='refresh' content='1; url= stock.php'/>  ";
} else {
  echo "<div class='alert alert-warning'>
      <strong>Failed!</strong> Redirecting you back in 1 seconds.
    </div>
   <meta http-equiv='refresh' content='1; url= stock.php'/> ";
}

?>

<html>

<head>
  <title>Tambah Barang</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>