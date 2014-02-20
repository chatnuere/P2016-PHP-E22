<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Inscription</title>
	 <meta name="viewport" content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1, width=device-width, target-densitydpi=device-dpi" />
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<link rel="stylesheet" type="text/css" href="css/fonts.css" />
</head>
<body>
	<div id="block">
		<header><h1><img src="assets/images/logo2.png" alt="logo scrapp"></h1></header>
		<h2>Inscription</h2>
		<form action="register.php" method="post">
			<input type="text" name="username"  placeholder="Pseudonyme" /><br />
			<input type="password" name="password" placeholder="Mot de passe" /><br />
			<input type="password" name="password-check" class="confirmation_mot_de_passe" placeholder="Confirmation de mot de passe" /><br />
			<input type="email" name="email" placeholder="Adresse email" /><br />
			<input type="email" name="email-check" class="confirmation_email" placeholder="Confirmation de votre adresse email" /><br />
			
			<input type="submit" name="submit" class="inscrire" value="Inscription" />
		</form>
	</div>
</body>
</html>
<?php

	

	if(isset($_POST['submit']))
	{
		if(!empty($_POST['username']))
		{

/*
			if(!empty($_post['email']))
			{
*/

			if(!empty($_POST['password']) && !empty($_POST['password-check']))
			{
				if($_POST['password'] === $_POST['password-check'])
				{//Hachage du mot de passe _ marche pô!!!
					//$pass_hache = sha1($_POST['password']);
					//si les conditions sont remplies on dirige l'utilisateur directement sur la page d'upload/photo/géoloc
					header("Location: upload/upload.html");
				//connection à la BDD et insertion des données
					$db = new PDO('mysql:host=mysql51-65.pro;dbname=sampaguiphplogin', 'sampaguiphplogin', 'qh2Z3XQNxHFu') or die();
					$req = $db->prepare("INSERT INTO users VALUES('', :username, :password, :email)");
					$req->execute(array(
						':username' => $_POST['username'],
						':password' => $_POST['password'],
						':email' => $_POST['email']
					));

					//vers la page de connection de l'utilisateur 
					//die('<a href="upload/upload.html">Bienvenue sur Scrapp</a>');
				}

				else
				{
					echo '<p class="error">Les deux mots de passe ne correspondent pas.</p>';
				}
			}


/*
			else
				{
					echo '<p class="error">Les adresses email ne correspondent pas.</p>';
				}
			}

*/

			else
			{
				echo '<p class="error">Veuillez renseigner un mot de passe et le confirmer</p>';
			}
		}
		else
		{
			echo '<p class="error">Veuillez renseigner votre pseudonyme</p>';
		}

	}
?>
