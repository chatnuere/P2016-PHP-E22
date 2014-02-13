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
    return $this->mapper->load(array('arrondissement=?',$params['ardtId']));
  }
  
} 
  
?>