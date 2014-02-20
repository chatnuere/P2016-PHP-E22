<?php
class Model{
  
private $dB;

  protected function __construct(){
    $f3=\Base::instance();
    if(preg_match("/mobile/",$f3->get('PATTERN'))){
      $this->dB=new \DB\SQL('mysql:host='.$f3->get('db_host').';port=3306;dbname=sampaguiphplogin',$f3->get('db_login'),$f3->get('db_password'));
    }
    else{
      $this->dB=new \DB\SQL('mysql:host='.$f3->get('db_host').';port=3306;dbname='.$f3->get('db_server'),$f3->get('db_login'),$f3->get('db_password'));
    }
    
  }
  
  protected function getMapper($table){
    return new \DB\SQL\Mapper($this->dB,$table);
  }
  
  protected function logdB(){
    return $this->dB->log();
  }
  
}
?>