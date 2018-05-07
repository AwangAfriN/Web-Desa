<?php
include 'layout/header.php';

if (!$_SESSION['login']) {
  header('location:login.php');
}

$id = $_GET['id'];


if (isset($_POST['edit_artikel']) && $_POST['edit_artikel'] == "SIMPAN") {
  $judul     = $_POST['judul'];
  $kategori  = $_POST['kategori'];
  $isi       = $_POST['isi'];
  $gambar    = $_FILES['gambar']['name'];

  if (!empty($gambar)) {
    move_uploaded_file($_FILES['gambar']['tmp_name'],"../img/".$gambar);
    $query  = $conn->query("UPDATE artikel SET gambar_artikel = '$gambar' WHERE id_artikel = '$id'", PDO::FETCH_ASSOC);
  }
  $query  = $conn->query("UPDATE artikel SET judul_artikel = '$judul', isi_artikel = '$isi', id_kategori = '$kategori' WHERE id_artikel = '$id'", PDO::FETCH_ASSOC);

  if ($query) {
    header('location:list_artikel.php');
  }
}

//artikel
$result  = $conn->query("SELECT * FROM artikel WHERE id_artikel = '$id'", PDO::FETCH_ASSOC);
$row    = $result->fetch();

//kategori
$kategori = $conn->query("SELECT * FROM kategori ORDER BY nama_kategori ASC", PDO::FETCH_ASSOC);
$kat      = $kategori->fetch();

?>
<div class="judul_section">
  <h1>Edit Artikel</h1>
  <hr>
</div>
<form action="" method="post" enctype="multipart/form-data">
  <div class="textbox black">
    <label for="judul" >Judul Artikel</label>
    <input id="judul" type="text" name="judul" value="<?=$row['judul_artikel'];?>"><br>
  </div>

  <div class="textbox black">
    <label for="kat">Kategori</label>
    <div class="styled-select">
      <select id="kat" name="kategori">
        <?php do{ ?>
          <option value="<?=$kat['id_kategori'];?>" <?php if ($row['id_kategori'] == $kat['id_kategori']) {echo "Selected";}?>>
            <?=$kat['nama_kategori'];?>
          </option>
        <?php }while ($kat = $kategori->fetch()); ?>
      </select>
    </div>
  </div>

  <div class="textbox black">
    <label for="isi">Isi</label>
    <textarea id="isi" name="isi" class="ckeditor"><?= $row['isi_artikel']; ?></textarea><br>
  </div>

  <div class="textbox black">
    <label for="img">Gambar</label>
    <input id="img" type="file" name="gambar">
  </div>
  <input type="submit" name="edit_artikel" value="SIMPAN" class="btn">
</form>
