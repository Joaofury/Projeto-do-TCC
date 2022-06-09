<?php 
include_once('conexao.php');
session_start();
session_destroy();
echo "<script>
			  window.location.replace('login.html');
			  preventDefault();
			  </script>;";



?>