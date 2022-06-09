<?php 
session_start();
 include_once('conexao.php'); 
 //if ($_SESSION['ID'] =="" ){
  // return header('location: login.html');
 if ($_SESSION['email']/*&& $_SESSION['senha'])*/){
   
    return header('location: resumofinanceiro.php');
}
else {
    echo" <script> alert('Novo por aqui não é? Cadastre-se para usar o sistema :)');
            window.location.replace('login.html');  
            </script>;";
}

?>