<?php
class App_controller extends Controller
    public function __construct()
    {
        parent::__construct();
        $this->tpl = array(
            'sync' => 'main.html'
        );
    }
    
    public function home($f3)
    {
        $f3->set('allpoints', $this->model->mapHome());
        
        $tabPrincipal = array();
        $elements     = $f3->get('allpoints');
        for ($i = 0; $i < sizeof($elements); $i++) {
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
    }
    
    public function signin($f3)
    {
            case 'GET':
                $this->tpl['sync'] = 'signin.html';
            case 'POST':
                $auth = $this->model->signin(array(
                    'login' => $f3->get('POST.login'),
                    'password' => $f3->get('POST.password')
                ));
                    $f3->set('error', 'Oops, an error occured ! Try again.');
                    $this->tpl['sync'] = 'signin.html';
                    $user = array(
                        'id' => $auth->id_user,
                        'pseudo' => $auth->pseudo
                    );
                    $f3->set('SESSION', $user);
                    $f3->reroute('/');
                }
        }
    }
    
    public function signout($f3)
    {
        session_destroy();
        $f3->reroute('/signin');
    }
    
    
    /*  fonction de récupération des informations sur l'utilisateur  */
    public function getMyAccount($f3)
    {
        $f3->set('account', $this->model->getMyAccount(array(
            'userId' => $f3->get('PARAMS.userId')
        )));
        $this->tpl['sync'] = 'account.html';
        
        $userInfo = array();
        $elements = $f3->get('account');
            $userInfo[$i] = array(
                "pseudo" => $elements[$i]["pseudo"],
                "mail" => $elements[$i]["mail"],
                "adresse" => $elements[$i]["adresse"],
                "tel" => $elements[$i]["tel"],
                "anniversaire" => $elements[$i]["anniversaire"],
                "picture" => $elements[$i]["picture"],
                "date" => $elements[$i]["date"],
                "nuage" => $elements[$i]["nuage"],
                "coeur" => $elements[$i]["coeur"],
                "goutte" => $elements[$i]["goutte"],
                "souris" => $elements[$i]["souris"],
                "check" => $elements[$i]["check"],
                "fleur" => $elements[$i]["fleur"],
                "chemin" => $elements[$i]["chemin"],
                "time" => $elements[$i]["time"],
                "id_user" => $elements[$i]["id_user"],
                "statut" => $elements[$i]["statut"]
            );
        }
        $f3->set('userInfo', $userInfo);
    }
    /* Fonction de mise à jour des infos utilisateurs*/
    public function updateAccount($f3)
    {
        $nom          = $f3->get('POST.nom');
        $anniversaire = $f3->get('POST.anniversaire');
        $adresse      = $f3->get('POST.adresse');
        $mail         = $f3->get('POST.mail');
        $phone        = $f3->get('POST.phone');
        $userid       = $f3->get('PARAMS.userId');
 
$f3->set('UPLOADS','public/images/users/');
 /*      \Web::instance()->receive(function($file){
       return true; 
       },true,true);*/
       
       \Web::instance()->receive(function($file) use ($f3){
          $monfichier=$file['name'];
         $f3->set('monfichier',$monfichier);
        },true,true);
        
        
        if ($nom) 
        {
            $this->model->updateAccount($nom, $anniversaire, $adresse, $mail, $phone, $userid);
        $chemin = $f3->get('monfichier');
       
           
       if ($nom) {
            $this->model->updateAccount($nom, $anniversaire, $adresse, $mail, $phone, $chemin, $userid);
        }
        $this->getMyAccount($f3);
    }
    /* Fonction d'afichage asynchrone des données utilisateurs*/
    public function getAccount($f3)
    {
        $f3->set('account', $this->model->getMyAccount(array(
            'userId' => $f3->get('PARAMS.userId')
        )));
        
        $userInfo = array();
        $elements = $f3->get('account');
            $userInfo[$i] = array(
                "pseudo" => $elements[$i]["pseudo"],
                "mail" => $elements[$i]["mail"],
                "adresse" => $elements[$i]["adresse"],
                "tel" => $elements[$i]["tel"],
                "anniversaire" => $elements[$i]["anniversaire"],
                "id_user" => $elements[$i]["id_user"],
                "picture" => $elements[$i]["picture"]
            );
        }
        $this->tpl['async'] = 'partials/membreinfo.html';
        $f3->set('userInfo', $userInfo);
        
    }
    /* Fonction d'afichage asynchrone du formulaire d'update des données utilisateurs*/
    public function changeAccount($f3)
    {
        $f3->set('account', $this->model->getMyAccount(array(
            'userId' => $f3->get('PARAMS.userId')
        )));
        
        $userInfo = array();
        $elements = $f3->get('account');
            $userInfo[$i] = array(
                "pseudo" => $elements[$i]["pseudo"],
                "mail" => $elements[$i]["mail"],
                "adresse" => $elements[$i]["adresse"],
                "tel" => $elements[$i]["tel"],
                "anniversaire" => $elements[$i]["anniversaire"],
                "id_user" => $elements[$i]["id_user"],
                "picture" => $elements[$i]["picture"]
            );
        }
        $this->tpl['async'] = 'partials/majmembreinfo.html';
        $f3->set('userInfo', $userInfo);
    }
}

?>