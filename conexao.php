<?php
	$host = "localhost"; 			
	$user = "root"; 
	$pass = ""; 
	$banco = "usuarios";
		
	$conn = @mysqli_connect($host, $user, $pass, $banco ) 
	or die ("Problemas com a conexão do Banco de Dados");
	$conn -> set_charset("utf8");
?>
<!--a>