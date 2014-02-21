<?php
class Mobile_controller extends Controller{


  public function __construct(){
    parent::__construct();
    $f3=\Base::instance();
    if(!$f3->get('SESSION.id')&&$f3->get('PATTERN')!='/mobile')
      $f3->reroute('/mobile');
    $this->tpl=array();
  }
  
  
  public function home($f3){
    $this->tpl['sync']='home.html';
    switch($f3->get('VERB')){
      case 'POST':
        $user=$this->model->login(array(
          'username'=>$f3->get('POST.username'),
          'password'=>$f3->get('POST.password')
        ));
        if($user){
          $f3->set('SESSION.username',$user->username);
          $f3->set('SESSION.id',$user->id);
          $f3->reroute('/mobile/membre');
        }
        else{
          $f3->set('error','Oops, vos identifiants sont erronés.');
        }
      break;
    }
    
  }
  
  
  public function membre($f3){
    $this->tpl['sync']='membre.html';
  }
 
  
      
  
}
?>
