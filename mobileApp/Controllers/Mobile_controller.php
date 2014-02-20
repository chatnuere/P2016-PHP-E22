<?php
class Mobile_controller extends Controller{


  public function __construct(){
    parent::__construct();
    $this->tpl=array();
  }
  
  
  public function home($f3){
    switch($f3->get('VERB')){
      case 'GET':
        $this->tpl['sync']='home.html';
      break;
      case 'POST':
        
      break;
    }
    
  }
  
 
  
      
  
}
?>
