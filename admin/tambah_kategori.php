<?php
include 'layout/header.php';

if (!$_SESSION['login']) {
  header('location:login.php');
}

if (isset($_POST['tambah_kategori']) && $_POST['tambah_kategori'] == "TAMBAH" ) {
  $nama   = $_POST['nama'];
  $query  = $conn->query("INSERT INTO kategori (nama_kategori) VALUE ('$nama')");

  if ($query) {
    header('location:list_kategori.php');
  }
}

?>
<div class="judul_section">
  <h1>Tambah Kategori</h1>
  <hr>
</div>
 <form action="" method="post">
   <div class="textbox black">
     <input id="nama" type="text" name="nama" placeholder="Masukkan Kategori">
   </div>
   <input type="submit" name="tambah_kategori" value="TAMBAH" class="btn">
 </form>
