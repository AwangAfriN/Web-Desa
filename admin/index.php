<?php
require 'layout/header.php';
$query  = $conn->query("SELECT artikel.* FROM artikel");
$data     = $query->fetch();
$num_rows = $query->rowCount();

if (!$_SESSION['login']) {
  header('location:login.php');
}
?>
  <div class="judul_section">
    <h1>Welcome to Dashboard, <?=$_SESSION['nama_admin'];?></h1>
    <hr style="width:50%;">
  </div>
  <div class="tarticle">
    <h4>Jumlah Artikel / Berita</h4>
    <h1><?=$num_rows;?></h1>
  </div>
<?php
require 'layout/footer.php';
?>
