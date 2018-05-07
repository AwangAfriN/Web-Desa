<?php
include 'layout/header.php';

if (!$_SESSION['login']) {
  header('location:login.php');
}

$query  = $conn->query("SELECT * FROM admin ORDER BY id_admin DESC", PDO::FETCH_ASSOC);
$data   = $query->fetch();

?>
<div class="judul_section">
  <h1>Daftar Admin</h1>
  <hr>
</div>
<a href="tambah_admin.php" class="tombolplus">
  <i class="fa fa-user-plus"></i> Tambah Admin
</a>
<br>
<table>
  <thead>
    <tr>
      <th>No.</th>
      <th>Nama</th>
      <th>Username</th>
      <th>Password</th>
      <th>Aksi</th>
    </tr>
  </thead>
  <tbody>
    <?php $num = 0; do{ $num++; ?>
    <tr>
      <td><?=$num;?></td>
      <td><?=$data['nama_admin'];?></td>
      <td><?=$data['user_admin'];?></td>
      <td><?=$data['pass_admin'];?></td>
      <td>
        <a href="edit_admin.php?id=<?=$data['id_admin'];?>" class="edit">Edit</a> -
        <a href="hapus_admin.php?id=<?=$data['id_admin'];?>" class="delete">Delete</a>
      </td>
    </tr>
  <?php }while ($data   = $query->fetch()); ?>
  </tbody>
</table>
