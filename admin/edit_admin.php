<?php
include 'layout/header.php';

if (!$_SESSION['login']) {
  header('location:login.php');
}


$id = $_GET['id'];
if (isset($_POST['simpan_admin']) && $_POST['simpan_admin'] == "SIMPAN") {
  $cond = "";
  $nama = $_POST['nama'];
  $user = $_POST['user'];
  $cond .= "nama_admin = '$nama', user_admin='$user'";

  if (!empty($_POST['pass'])) {
    $pass   = MD5($_POST['pass']);
    $cond .= ", pass_admin = '$pass'";
  }

  $sql    = "UPDATE admin SET $cond WHERE id_admin='$id'";
  $query  = $conn->prepare($sql);
  $query->execute(array(
    ':nama' => $nama,
    ':user' => $user,
    ':pass' => $pass,
  ));
  if ($query) {
    header('location:list_admin.php');
  }
}

$query  = $conn->query("SELECT * FROM admin WHERE id_admin = '$id'", PDO::FETCH_ASSOC);
$data   = $query->fetch();

?>
<div class="judul_section">
  <h1>Edit Admin</h1>
  <hr>
</div>
<form action="" method="post">
  <div class="textbox black">
    <i class="fa fa-user"></i>
    <input id="nama" type="text" name="nama" value="<?=$data['nama_admin'];?>">
  </div>

  <div class="textbox black">
    <i class="fa fa-user"></i>
    <input id="user" type="text" name="user" value="<?=$data['user_admin'];?>">
  </div>

  <div class="textbox black">
    <i class="fa fa-lock"></i>
    <input id="pass" type="password" name="pass" placeholder="password">
  </div>

  <input type="submit" name="simpan_admin" value="SIMPAN" class="btn">
</form>
