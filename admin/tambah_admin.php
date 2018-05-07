<?php
include 'layout/header.php';

if (!$_SESSION['login']) {
  header('location:login.php');
}

if (isset($_POST['tambah_admin']) && $_POST['tambah_admin'] == "TAMBAH") {
  $nama    = $_POST['nama'];
  $user = $_POST['user'];
  $pass      = MD5($_POST['pass']);

  $sql    = "INSERT INTO admin (nama_admin,user_admin,pass_admin) VALUES (:nama, :user, :pass)";
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

?>

<div class="judul_section">
  <h1>Tambah Admin</h1>
  <hr>
</div>
<form action="" method="post">
  <div class="textbox black">
    <i class="fa fa-user"></i>
    <input id="nama" type="text" name="nama" placeholder="Nama"><br>
  </div>

  <div class="textbox black">
    <i class="fa fa-user"></i>
    <input id="user" type="text" placeholder="Username" name="user" required>
  </div>

  <div class="textbox black">
    <i class="fa fa-lock"></i>
    <input id="pass" type="password" placeholder="Password" name="pass" required>
  </div>

  <input type="submit" name="tambah_admin" value="TAMBAH" class="btn">
</form>
