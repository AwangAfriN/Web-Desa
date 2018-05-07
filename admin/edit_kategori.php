<?php
include 'layout/header.php';

if (!$_SESSION['login']) {
  header('location:login.php');
}

$id     = $_GET['id'];

if (isset($_POST['simpan_kategori']) && $_POST['simpan_kategori'] == "SIMPAN") {
  $nama   = $_POST['nama'];

  $query  = $conn->query("UPDATE kategori SET nama_kategori = '$nama' WHERE id_kategori = '$id'", PDO::FETCH_ASSOC);

  if ($query) {
    header('location:list_kategori.php');
  }
}

$query  = $conn->query("SELECT * FROM kategori WHERE id_kategori = '$id'", PDO::FETCH_ASSOC);
$data   = $query->fetch();

?>
  <div class="judul_section">
    <h1>Edit Kategori</h1>
    <hr>
  </div>
 <form action="" method="post">
   <div class="textbox black">
     <input id="nama" type="text" name="nama" value="<?= $data['nama_kategori']; ?>"><br>
   </div>
   <input type="submit" name="simpan_kategori" value="SIMPAN" class="btn">
 </form>
