<?php
require 'config/db_connect.php';
require 'config/function.libs.php';
?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Website Kesenet</title>
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/fonts.css">
    <link rel="stylesheet" href="assets/css/fontawesome-all.css">
  </head>
  <body>
    <header>
      <nav class="navbar">
        <div class="row">
          <div class="nav-brand">
            <a href="index.php">
              <img src="assets/images/logo.png">
            </a>
          </div>
          <div class="nav-menu">
            <ul>
              <li><a href="index.php"><i class="fa fa-home"></i> HOME</a></li>
              <li><a href="berita.php"><i class="fa fa-newspaper"></i> BERITA</a></li>
                <li><a href="galeri.php"><i class="fa fa-images"></i> GALERI</a></li>
            </ul>
          </div>
          <div class="nav-sisa">
            <div class="kontak">
              <a href="kontak.php"><i class="fa fa-envelope"></i> Kontak Desa</a>
            </div>
          </div>
        </div>
      </nav>
    </header>
    <!-- <div class="clear"></div> -->
