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
  	return $this->getMapper('user')->load(array('pseudo=?',$params['login']));
 }
 



} 
?>