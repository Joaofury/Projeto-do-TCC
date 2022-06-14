<?php
	include_once('conexao.php');
	// recuperando 
	$email = $_POST['email'];
	$usuario = $_POST['usuario'];		
	$senha = md5($_POST['senha']);
	$cpf = $_POST['cpf'];
	// criando a linha de INSERT
	$result_usuario = "SELECT email FROM tablogin WHERE email = '$email'";
	$result = $conn->query($result_usuario,);
  
	// executando instrução SQL
	$retorno = $result->num_rows;
    if($retorno === 0){
		$sqlinsert = $conn->prepare( "insert into tablogin ( email,usuario, senha, cpf) values ('$email','$usuario', '$senha', '$cpf')");
		$sqlinsert -> execute();
			echo "<script>
		      alert('Cadastrado com sucesso!');
			  window.location.replace('login.html');  
			  </script>;";
	}
	 elseif($retorno >=1) {
		echo "<script>
		      alert('Email já cadastrado!');
			  window.location.replace('cadastro.html');  
			  </script>;";
			  exit;
	} 


		
	
	mysqli_close($conn);
?>
