<?php 
session_start();
 include_once('conexao.php'); 
 //if ($_SESSION['ID'] =="" ){
  // return header('location: login.html');
 if ($_SESSION['email']/*&& $_SESSION['senha'])*/){
   
    echo" <script> alert('Você já está logado');
    window.location.replace('index.html');  
    </script>;";
 }
else {
    echo" <script>
            window.location.replace('login.html');  
            </script>;";
}

?>