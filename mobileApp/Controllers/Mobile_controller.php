<?php
class Mobile_controller extends Controller{


  /*public function __construct(){
    parent::__construct();
    $f3=\Base::instance();
    if(!$f3->get('SESSION.id')&&$f3->get('PATTERN')!='/mobile')
      $f3->reroute('/mobile');
    $this->tpl=array();
  }*/
  
   public function __construct()
    {
        parent::__construct();
        $this->tpl = array(
            'sync' => 'home.html'
        );
    }
  
  
  public function home($f3){
    $this->tpl['sync']='home.html';
    switch($f3->get('VERB')){
      case 'POST':
        $user=$this->model->login(array(
          'username'=>$f3->get ('POST.username'),
          'password'=>$f3->get ('POST.password')
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


//pour la page d'enregistrement (register)  

//1. template à affciher après spécification de la route dans routes.ini

  public function register($f3){
    $this->tpl['sync']='register.html';
  } 
  
 //2. fonction pour que l'utilisateur s'enregistre : username, password et email
 public function submit($f3){
    $this->tpl['sync']='register.html';
    switch($f3->get('VERB')){
      case 'POST':
        $user=$this->model->login(array(
          'username'=>$f3->get ('POST.username'),
          'password'=>$f3->get ('POST.password'),
          'email'=>$f3->get ('POST.email')
        ));
        if($user){
          $f3->set('SESSION.username',$user->username);
          $f3->set('SESSION.id',$user->id);
          $f3->reroute('/mobile/membre');
        }
        else{
          $f3->set('error','Veuillez remplir tous les champs s\'il vous plait.');
        }
      break;
    }
    
  }
  
//3.Fonction upload de photo

  public function uploadPhoto($f3){
  

        $latitude        = $f3->get('POST.latitude');
        $longitude       = $f3->get('POST.longitude');
        $salete       = $f3->get('POST.salete');
 
 
$f3->set('UPLOADS','public/images/uploaded/');

       
       \Web::instance()->receive(function($file) use ($f3){
       var_dump($file);
         $monupload=$file['name'];
         $f3->set('monupload',$monupload);
        },true,true);
        
        
        $chemin = $f3->get('monupload');
           
       if ($latitude) {
		   $this->model->insertScrap($chemin,$latitude, $longitude, $salete);
        }
            $this->merci($f3);

  } 
  
    public function merci($f3){
    $this->tpl['sync']='merci.html';
  } 
  
}
?>
