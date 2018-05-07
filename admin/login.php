<?php

session_start();
$server		= 'localhost';
$username	= 'root';
$pass     = '';
$db_name	= 'web_desa';
$message  = '';

try
{
  $conn		= new PDO("mysql:host=$server;dbname=$db_name", $username, $pass);
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  if (isset($_POST['login']) && $_POST['login'] == "LOGIN" ) {

    $user = $_POST['user'];
    $pass = MD5($_POST['pass']);

    $query    = $conn->query("SELECT * FROM admin WHERE user_admin = '$user' and pass_admin = '$pass'", PDO::FETCH_ASSOC);
    $data     = $query->fetch();
    $num_rows = $query->rowCount();
    if ($num_rows > 0) {
      session_start();

      $_SESSION['nama_admin'] = $data['nama_admin'];
      $_SESSION['id_admin'] = $data['id_admin'];
      $_SESSION['login']  = true;
      header('location:index.php');
    }else {
      $message="* Username atau Password salah";
    }
  }
} catch (PDOException $error)
{
  echo $error->getMessage();
}

?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Login Admin</title>
    <link rel="stylesheet" href="admin.css">
    <link rel="stylesheet" href="../assets/css/fonts.css">
    <link rel="stylesheet" href="../assets/css/fontawesome-all.css">
  </head>
  <body>
    <div class="login-page">
      <div class="login-box">
        <img src="../assets/images/admin1.png">
        <?php
        if (isset($message)) {
          echo ' <label class="text-danger"><i>'.$message.'</i></label> ';
        }
        ?>
        <h1>Login as Admin <i class="fa fa-cog" style="font-size:25px;color:#92cf48;"></i></h1>
        <form action="" method="post">
          <div class="textbox white">
            <i class="fa fa-user"></i>
            <input id="user" type="text" placeholder="Username" name="user" required>
          </div>
          <div class="textbox white">
            <i class="fa fa-lock"></i>
            <input id="pass" type="password" placeholder="Password" name="pass" required>
          </div>
          <input type="submit" name="login" value="LOGIN" class="btn">
        </form>
      </div>
    </div>
  </body>
</html>
