
<?php
class App_controller extends Controller{

  public function __construct(){
    parent::__construct();
    $this->tpl=array('sync'=>'main.html');
  }
  
  public function home($f3){
  $f3->set('allpoints', $this->model->mapHome());
  
$tabPrincipal = array();
        $elements = $f3->get('allpoints');
        for($i=0; $i<sizeof($elements); $i++){
          $tabPrincipal[$i] = array(
            "longitude" => $elements[$i]["longitude"],
            "latitude" => $elements[$i]["latitude"],
            "chemin" => $elements[$i]["chemin"],
             "pollution" => $elements[$i]["pollution"],
             "time" => $elements[$i]["time"],
             "statut" => $elements[$i]["statut"]
       );
        }
        $f3->set('tabPerso', $tabPrincipal);

   /* foreach ($f3->get('allpoints') as $point) {
       $e[] = array(
    "longitude" => $point["longitude"],
    "latitude" => $point["latitude"],
    "chemin" => $point["chemin"],
     "pollution" => $point["pollution"],
     "statut" => $point["statut"],
);
        }
        $pointsJson  = json_encode($e);*/
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
            $f3->set('error','Oops, an error occured ! Try again.');
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
  
    public function getMyAccount($f3){
    $f3->set('account',$this->model->getMyAccount(array('userId'=>$f3->get('PARAMS.userId'))));
    $this->tpl['sync']='account.html';
    
    $userInfo = array();
        $elements = $f3->get('account');
        for($i=0; $i<sizeof($elements); $i++){
          $userInfo[$i] = array(
            "pseudo" => $elements[$i]["pseudo"],
             "mail" => $elements[$i]["mail"],
             "adresse" => $elements[$i]["adresse"],
             "tel" => $elements[$i]["tel"],
             "anniversaire" => $elements[$i]["anniversaire"],
             "date" => $elements[$i]["date"],
             "nuage" => $elements[$i]["nuage"],
             "coeur" => $elements[$i]["coeur"],
             "goutte" => $elements[$i]["goutte"],
             "souris" => $elements[$i]["souris"],
             "check" => $elements[$i]["check"],
             "fleur" => $elements[$i]["fleur"],
             "chemin" => $elements[$i]["chemin"],
             "time" => $elements[$i]["time"],
              "statut" => $elements[$i]["statut"]
       );
        }

        $f3->set('userInfo', $userInfo);
  }
}

?>