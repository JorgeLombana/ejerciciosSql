<?php
  session_start();
  require 'database.php';
  if (isset($_SESSION['user_id'])) {
    $records = $conn->prepare('SELECT id, email, password FROM users WHERE id = :id');
    $records->bindParam(':id', $_SESSION['user_id']);
    $records->execute();
    $results = $records->fetch(PDO::FETCH_ASSOC);
    $user = null;
    if (count($results) > 0) {
      $user = $results;
    }
  }
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>Bienvenidos aprendices</title>
    <link
      href="https://fonts.googleapis.com/css?family=Roboto"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="assets/style.css" />
  </head>
  <body>
    <?php require 'partials/header.php' ?>
    <?php if(!empty($user)): ?>
    <br />
    Bienvenido.
    <?= $user['email']; ?>
    <br />El login fue exitoso.
    <a href="logout.php"> Cierre de sesión </a>
    <?php else: ?>
    <h3>
      Si ya tienes cuenta, ingresa!! si no la tienes, te invito a regitrarte
    </h3>
    <a href="login.php"> Ingreso</a> o
    <a href="signup.php">Registro</a>
    <?php endif; ?>
    <div
      style="
        display: flex;
        justify-content: center;
        align-items: center;
        height: 70vh;
      "
    >
      <img src="partials/img.png" alt="algo bonito" />
    </div>
  </body>
</html>
