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
    return $this->mapper->load(array('pollution=?',$params['polId']));
  }
  
} 
  
?>