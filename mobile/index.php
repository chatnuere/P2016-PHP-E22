<!doctype html>

<?php
session_start();


if(isset($_POST['submit'])){
    $db = new PDO('mysql:host=mysql51-65.pro;dbname=sampaguiphplogin', 'sampaguiphplogin', 'qh2Z3XQNxHFu') or die();
    $req = $db->prepare("SELECT * FROM users WHERE username = :username AND password = :password");
    $req->execute(array(
      ':username' => $_POST['username'],
      ':password' => $_POST['password']
    ));
    $res = $req->fetch();

    if($res != ''){
          //si les conditions sont remplies on dirige l'utilisateur directement sur la page d'upload/photo/géoloc
          header("Location: upload/upload.html");
  
    } else {
      
    }
  }

?>


<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1, width=device-width, target-densitydpi=device-dpi" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link rel="stylesheet" type="text/css" href="css/fonts.css" />
        <title>Scrapp</title>
    </head>
    <body>
<header><h1><img src="assets/images/logo2.png" alt="logo scrapp"></h1></header>
 <div>
 <p class="catch_phrase">Un petit ruisseau, du nom de Larousse,
 coule en leur lieu et les approvisionne en régalades</p>
 </div>

<h2>Connexion</h2>
<div>
  <form autocomplete="off" method="post" action="index.php">
      <input type="text" id="full_name" name="full_name" placeholder="Nom d'utilisateur" value="<?php if (isset($_POST['unsername'])) echo htmlentities(trim($_POST['login'])); ?>"required />
      <input type="password" id="password" name="pass" placeholder="Mot de passe" value="<?php if (isset($_POST['password'])) echo htmlentities(trim($_POST['pass'])); ?>"required />
      <label for="pass"></label>
      <input type="submit" value="Login" />
</form>

</div>

<section>
  <a href="upload/upload.html">Mot de passe oublié ?</a></br>
  <a href="register.php">Vous inscrire</a>
<?php
if (isset($erreur)) echo '<br /><br />',$erreur;
?>
</section>
    </body>
</html>