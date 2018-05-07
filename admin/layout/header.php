<?php
require '../config/db_connect.php';
session_start();
?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Dashboard Admin</title>
    <link rel="stylesheet" href="admin.css">
    <link rel="stylesheet" href="../assets/css/fonts.css">
    <link rel="stylesheet" href="../assets/css/fontawesome-all.css">
    <script src="../assets/ckeditor/ckeditor.js" type="text/javascript"></script>
  </head>
  <body>
    <section id="sideMenu">
      <!-- <img src="../assets/images/logo.png" alt="Logo"> -->
      <h1>Desa Kesenet</h1>
      <nav>
        <a href="index.php">
          <i class="fa fa-home"></i> Dashboard</a>
        <a href="list_admin.php">
          <i class="fa fa-user"></i> Daftar Admin</a>
        <a href="list_artikel.php">
          <i class="fa fa-newspaper"></i> Daftar Artikel</a>
        <a href="list_kategori.php">
          <i class="fa fa-bookmark"></i> Daftar Kategori</a>
        <a href="../index.php">
          <i class="fa fa-home"></i> Kembali Ke Website</a>
      </nav>
    </section>
    <header>
      <a href="logout.php"><i class="fa fa-power-off"></i> Log Out</a>
      <div class="clear"></div>
    </header>
    <section id="content-area">
