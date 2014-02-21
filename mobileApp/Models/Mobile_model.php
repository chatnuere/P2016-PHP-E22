<?php
class Mobile_model extends Model{
    
private $mapper;

  public function __construct(){
    parent::__construct();
   
  }
  
  public function login($params){
    return $this->getMapper('users')->load(array('username=? and password=?',$params['username'],md5($params['password'])));
  }

  
  
  
}
?>