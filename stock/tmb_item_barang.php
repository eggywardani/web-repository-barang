<?php
include '../dbconnect.php';
$nama = $_POST['nama'];
// $id = uniqid("KB");


$queryItem = mysqli_query($conn, "SELECT MAX(id) as id_besar FROM item_barang");
$data = mysqli_fetch_array($queryItem);
$idBesar = $data['id_besar'];
$urutan = (int) substr($idBesar, 2, 3);
$urutan++;
$huruf = "KB";
$id = $huruf . sprintf("%03s", $urutan);

$query = mysqli_query($conn, "INSERT INTO `item_barang` (`id`, `nama`) VALUES ('$id', '$nama');");

if ($query) {

  echo " <div class='alert alert-success'>
      <strong>Success!</strong> Redirecting you back in 1 seconds.
    </div>
  <meta http-equiv='refresh' content='1; url= item_barang.php'/>  ";
} else {
  echo "<div class='alert alert-warning'>
      <strong>Failed!</strong> Redirecting you back in 1 seconds.
    </div>
   <meta http-equiv='refresh' content='1; url= item_barang.php'/> ";
}
?>

<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>