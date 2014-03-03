<?php
class App_model extends Model{
  
private $mapper;
  
 public function __construct(){
   parent::__construct();
   $this->mapper=$this->getMapper('photo');
 } 
 
 public function home(){
 }
///  public function mapHome(){
//return $this->dB->exec('SELECT * FROM photo ORDER  BY `id_photo` DESC');
//return $this->mapper->find(array('statut=?','0'));
///return $this->mapper->find(array(),array('order'=>'id_photo DESC'));

public function mapHome(){
$photo_mapper = $this->getMapper('photo');
return $photo_mapper->find(array(),array('order'=>'id_photo DESC'));
}

  public function getImage($params){
    return $this->mapper->find(array('arrondissement=?',$params['ardtId']));
  }

  public function getPollution($params){
    return $this->mapper->find(array('pollution=?',$params['polId']));
  }
  

  public function getPhotoUser($params){
     return $this->mapper->find(array('id_user=?',$params['userId']));
  }


  function signin($params){
  	return $this->getMapper('user')->load(array('pseudo=?',$params['login'])&&(array('mdp=?',$params['password'])));
 }
 

  public function getMyAccount($params){
         $userInfos=$this->dB->exec('SELECT   * FROM     `photo` LEFT JOIN `user` ON `photo`.`user_id` = `user`.`id_user` LEFT JOIN `badges` ON `photo`.`user_id` = `badges`.`user_id` WHERE    `photo`.`user_id`= '.$params['userId'].' ORDER BY `id_photo` DESC ;');
		 return $userInfos;
  }

  public function validate($params){
       return $this->mapper->exec('UPDATE `photo` SET `statut` = 0 WHERE `id_photo` ='.$params['photoId']);
  }

  public function treated($params){
       return $this->mapper->exec('UPDATE `photo` SET `statut` = 1 WHERE `id_photo` ='.$params['photoId']);
  }

} 
?>