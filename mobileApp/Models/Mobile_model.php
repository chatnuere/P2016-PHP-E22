<?php
class Mobile_model extends Model{
    
private $mapper;

  function __construct(){
    parent::__construct();
   
  }

  function getUsers($params){
    return $this->mapper->find(array('promo=?',$params['promo']),array('order'=>'lastname'));
  }
  
  function getFavUsers($params){
    $map=$this->getMapper('favorite');
    return $map->find(array('logId=?',$params['logId']),array('order'=>'lastname'));
  }
  
  function getFavorites($params){
    $map=$this->getMapper('wififav');
    return $map->find(array('logId=?',$params['logId']));
  }
  
  function getUser($params){
    return $this->mapper->load(array('id=?',$params['id']));
  }
  
  function searchUsers($params){
    $query='(firstname like "%'.$params['keywords'].'%" or lastname  like "%'.$params['keywords'].'%")';
    $query.=$params['filter']?' and promo="'.$params['filter'].'"':'';
    return $this->mapper->find($query,array('order'=>'lastname'));
    
  }
  
  function favorite($params){
    $map=$this->getMapper('wififav');
    $favorite=$map->load(array('favId=? and logId=?',$params['favId'],$params['logId']));
    
    if($favorite){
      $favorite->erase();
      return false;
    }
    $map->logId=$params['logId'];
    $map->favId=$params['favId'];
    $map->save();
    return true;
  }
  
  function recordFile($params){
    $map=$this->getMapper('files');
    $map->userId=$params['userId'];
    $map->logId=$params['logId'];
    $map->filePath=$params['filePath'];
    $map->name=$params['name'];
    $map->save();
    return true;
  }
  
  function getFiles($params){
    $map=$this->getMapper('file');
    return $map->find(array('userId=?',$params['id']));

  }
  function getFile($params){
    $map=$this->getMapper('files');
    return $map->load(array('id=?',$params['id']));
  }
  
  function signin($params){
    return $this->mapper->findone(array('userId=?',$params['login']));
  }
  
  
}
?>