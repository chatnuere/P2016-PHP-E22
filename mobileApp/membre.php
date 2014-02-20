<?php

session_start();
echo"Bienvenue".$_SESSION['username'];

/*session_start();
if (!isset($_SESSION['login'])) {
	header ('Location: index.php');
	exit();
}*/
?>

<html>
<head>
<title>espace auquel l'utilisateur aura accès pour prendre la photo</title>
</head>

<body>
Bienvenue <?php echo htmlentities(trim($_SESSION['login'])); ?> !<br />
<a href="deconnexion.php">Déconnexion</a>
</body>
</html>