<?php
class App_model extends Model{
  
private $mapper;
  
 public function __construct(){
   parent::__construct();
   $this->mapper=$this->getMapper('photo');
 } 
 
 public function home(){
  
 }

  public function getImage($params){
    return $this->mapper->find(array('arrondissement=?',$params['ardtId']));
  }

  public function getPollution($params){
    return $this->mapper->find(array('pollution=?',$params['polId']));
  }
  

  public function getPhotoUser($f3){
    
  }


  function signin($params){
  	return $this->getMapper('user')->load(array('pseudo=?',$params['login']));
 }

} 
  
?>