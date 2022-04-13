<?php
	include_once('conexao.php');
	// recuperando 
	$email = $_POST['email'];
	$usuario = $_POST['usuario'];		
	$senha = md5($_POST['senha']);
	$cpf = $_POST['cpf'];
	// criando a linha de INSERT
	$sqlinsert =  "insert into tablogin ( email,usuario, senha, cpf) values ('$email','$usuario', '$senha', '$cpf')";
	
	// executando instrução SQL
 $resultado = @mysqli_query($conn, $sqlinsert);

	if (!$resultado) {
		die('Query Inválida: ' . @mysqli_error($conn));  
	} else {
		echo "<script>
		      alert('Cadastrado com sucesso!');
			  window.location.replace('login.html');
			  </script>;";
	} 


		
	
	mysqli_close($conn);
?>
</body>
</html>
