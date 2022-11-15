<?php
//Rebem els parameteres del formulari
$nombre = htmlspecialchars($_POST['nombre']);
$edad = (int)htmlspecialchars($_POST['edad']);
?>
Hola <?php echo $nombre; ?>.
Usted tiene <?php echo $edad; ?> años.