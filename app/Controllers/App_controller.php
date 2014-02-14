<?php
class App_controller extends Controller{

  public function __construct(){
    parent::__construct();
    $this->tpl=array('sync'=>'main.html');
  }
  
  public function home($f3){
    
  }
    
  public function getImage($f3){
    $f3->set('ardt',$this->model->getImage(array('ardtId'=>$f3->get('PARAMS.ardtId'))));
    var_dump($f3->get('ardt'));
    $this->tpl['async']='partials/image.html';
  }
 
}
?>