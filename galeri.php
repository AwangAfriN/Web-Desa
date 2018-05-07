<?php
include 'layout/header.php';

$query  = $conn->query("SELECT gambar_artikel FROM artikel", PDO::FETCH_ASSOC);
$data   = $query->fetch();
?>

<div class="container">
  <div class="content">
    <div class="judul_section">
      <h1>GALERI</h1>
      <hr>
    </div>
    <div class="galeri">
      <?php do{ ?>
        <img src="img/<?=$data['gambar_artikel']?>">
      <?php }while ($data = $query->fetch());?>
    </div>

  <?php require 'layout/footer.php'; ?>
