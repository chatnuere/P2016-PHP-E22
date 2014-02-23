<?php
class Mobile_model extends Model{
    
private $mapper;

  public function __construct(){
    parent::__construct();
   
  }
  
  public function login($params){
    return $this->getMapper('users')->load(array('username=? and password=?',$params['username'],md5($params['password'])));
  }

   //Pour que l'utilisateur envoie ses données à la bdd lors de son enregistrement 

 // public function submit($params){
 // $db->exec('INSERT INTO users VALUES (:id, :username, :password, :email)',array(':username' => $_POST['username'],':password' => $_POST['password'],':email' => $_POST['email']))
 
 
  
  
}
?>