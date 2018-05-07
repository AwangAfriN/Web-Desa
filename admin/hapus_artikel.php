<?php
include 'layout/header.php';

if (!$_SESSION['login']) {
  header('location:login.php');
}

$id = $_GET['id'];

$query  = $conn->query("DELETE FROM artikel WHERE id_artikel = '$id'");

if ($query) {
  header('location:list_artikel.php');
}

?>
