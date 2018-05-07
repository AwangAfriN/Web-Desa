<?php
include 'layout/header.php';

if (!$_SESSION['login']) {
  header('location:login.php');
}

$result  = $conn->query("SELECT * FROM kategori ORDER BY id_kategori DESC", PDO::FETCH_ASSOC);
// while ($row = $result->fetch()) {echo $row->judul_artikel;}
$row = $result->fetch();
?>

<div class="judul_section">
  <h1>Daftar Kategori</h1>
  <hr>
</div>
<a href="tambah_kategori.php" class="tombolplus">
  <i class="fa fa-plus"></i> Tambah Kategori
</a>
<br>

<table>
  <thead>
    <tr>
      <th>No.</th>
      <th>Nama kategori</th>
      <th>Aksi</th>
    </tr>
  </thead>
  <tbody>
  <?php $num = 0; do{ $num++; ?>
    <tr>
      <td><?=$num;?></td>
      <td><?=$row['nama_kategori'];?></td>
      <td>
        <a href="edit_kategori.php?id=<?=$row['id_kategori'];?>" class="edit">Edit</a> -
        <a href="hapus_kategori.php?id=<?=$row['id_kategori'];?>" class="delete">Hapus</a>
      </td>
    </tr>
  <?php }while($row = $result->fetch()); ?>
</tbody>
</table>
