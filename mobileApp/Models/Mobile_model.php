<?php
class Mobile_model extends Model{
    
private $mapper;

  public function __construct(){
    parent::__construct();
   
  }
  
  public function login($params){
    return $this->getMapper('users')->load(array('pseudo=? and mdp=?',
      $params['username'],
      $params['password']));
  }

   //Pour que l'utilisateur envoie ses données à la bdd lors de son enregistrement 

 // public function submit($params){
 // $db->exec('INSERT INTO users VALUES (:id, :username, :password, :email)',array(':username' => $_POST['username'],':password' => $_POST['password'],':email' => $_POST['email']))
 
public function insertScrap( $chemin,$longitude,$latitude, $salete)
    {
        $this->dB->exec('INSERT INTO photos (`chemin`, `longitude`, `latitude`, `ardt`, `pollution`, `user_id` , `statut`) VALUES ("' . $chemin . '","' . $longitude . '","' . $latitude . '","0",' . $salete . ', 2, 0)');
    }
  
public function createAccount($nom, $mdp, $mail)
  {
        $this->dB->exec('INSERT INTO users (`pseudo`, `mdp`, `mail`) VALUES ("' . $nom . '","' . $mdp . '","' . $mail . '")');
  }
    
  
}
?>