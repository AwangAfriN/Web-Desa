<?php
require 'layout/header.php';

$query  = $conn->query("SELECT kategori.* ,artikel.* FROM artikel LEFT JOIN kategori on artikel.id_kategori = kategori.id_kategori ORDER BY artikel.id_artikel DESC LIMIT 3");
$data   = $query->fetch();
?>

<div class="jumbotron">
  <div class="inner">
    <h1>Desa Kesenet</h1>
    <h3>Kecamatan Banjarmangu, Kabupaten Banjarnegara</h3>
    <h3> <i class="fa fa-phone"></i> (022)xxxxxxxx &nbsp;&nbsp;-&nbsp;&nbsp; <i class="fa fa-envelope"></i> desakesenet@gmail.com </h3>
  </div>
</div>
<div class="container">
  <div class="content">
    <div class="berita">
      <div class="judul_section">
        <h1>BERITA TERBARU</h1>
        <hr>
      </div>
      <div class="berita_section">
        <?php do{ ?>
          <div class="grid">
            <div class="cover_grid_news">
              <img src="img/<?=$data['gambar_artikel']?>">
            </div>
            <div class="read-more">
              <div class="judul">
                <h3><a href="lihat_artikel.php?id=<?=$data['id_artikel'];?>"><?=$data['judul_artikel'];?></a></h3>
              </div>
              <div class="attr">
                <p>
                  <?=tanggal($data['tanggal_artikel']);?> /
                  <a href="kategori.php?id=<?=$data['id_kategori'];?>">
                    <?=$data['nama_kategori'];?>
                  </a>
                </p>
              </div>
              <div class="isi">
                <p><?=substr($data['isi_artikel'],0,125);?>...</p>
              </div>
              <div class="tombol_lihat">
                <a href="lihat_artikel.php?id=<?=$data['id_artikel'];?>">Baca Selengkapnya <i class="fa fa-arrow-right"></i></a>
              </div>
            </div>
          </div>
        <?php }while ($data = $query->fetch());?>
      </div>
      <div class="more_berita">
        <h3> <a href="berita.php">Lihat berita lainnya...</a></h3>
      </div>
    </div>

    <?php require 'layout/footer.php'; ?>
