
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
    $this->tpl['async']='partials/ardt.html';
  }

  public function getPollution($f3){
    $f3->set('pol',$this->model->getPollution(array('polId'=>$f3->get('PARAMS.polId'))));
    $this->tpl['async']='partials/pol.html';
  }
 
}

?>