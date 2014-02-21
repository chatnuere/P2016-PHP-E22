
<?php
class App_controller extends Controller{

  public function __construct(){
    parent::__construct();
    $this->tpl=array('sync'=>'main.html');
  }
  
  public function home($f3){
    
  }
    

  public function signin($f3){
      switch($f3->get('VERB')){
        case 'GET':
          $this->tpl['sync']='signin.html';
        break;
        case 'POST':
          $auth=$this->model->signin(array(
            'login'=>$f3->get('POST.login'),
            'password'=>$f3->get('POST.password')
          ));
          if(!$auth){
            $f3->set('error','Oops');
            $this->tpl['sync']='signin.html';
          }else{
            $user=array(
              'id'=>$auth->id_user,
              'pseudo'=>$auth->pseudo
            );
            $f3->set('SESSION',$user);
            $f3->reroute('/');
          }
        break;
      }
  }


  public function signout($f3){
    session_destroy();
    $f3->reroute('/signin');
  }


  public function getImage($f3){
    $f3->set('ardt',$this->model->getImage(array('ardtId'=>$f3->get('PARAMS.ardtId'))));
    $this->tpl['async']='partials/ardt.html';
  }

  public function getPollution($f3){
    $f3->set('pol',$this->model->getPollution(array('polId'=>$f3->get('PARAMS.polId'))));
    $this->tpl['async']='partials/pol.html';
  }
 

  public function getPhotoUser($f3){
    $f3->set('userPhoto',$this->model->getPhotoUser(array('userId'=>$f3->get('PARAMS.userId'))));
    $this->tpl['async']='partials/userPhoto.html';
  }
}

?>