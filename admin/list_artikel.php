<?php
include 'layout/header.php';

if (!$_SESSION['login']) {
  header('location:login.php');
}

$result  = $conn->query("SELECT kategori.*,artikel.* FROM artikel LEFT JOIN kategori ON artikel.id_kategori = kategori.id_kategori ORDER BY artikel.id_artikel DESC", PDO::FETCH_ASSOC);
// while ($row = $result->fetch()) {echo $row->judul_artikel;}
$row = $result->fetch();
?>
<div class="judul_section">
  <h1>Daftar Artikel</h1>
  <hr>
</div>
<a href="tambah_artikel.php" class="tombolplus">
  <i class="fa fa-plus"></i> Tambah Artikel
</a>
<br>

<table>
  <thead>
    <tr>
      <th>No.</th>
      <th>Judul</th>
      <th>Tanggal</th>
      <th>Kategori</th>
      <th>Gambar</th>
      <th>Aksi</th>
    </tr>
  </thead>
  <tbody>
  <?php $num = 0; do{ $num++; ?>
    <tr>
      <td><?=$num;?></td>
      <td><?=$row['judul_artikel'];?></td>
      <td><?=$row['tanggal_artikel'];?></td>
      <td><?=$row['nama_kategori'];?></td>
      <td><img src="../img/<?=$row['gambar_artikel'];?>" alt="<?=$row['gambar_artikel'];?>" style="width:100px;"></td>
      <td>
        <a href="edit_artikel.php?id=<?=$row['id_artikel'];?>" class="edit">Edit</a> -
        <a href="hapus_artikel.php?id=<?=$row['id_artikel'];?>" class="delete">Hapus</a>
      </td>
    </tr>
    <?php }while($row = $result->fetch()); ?>
  </tbody>
</table>
