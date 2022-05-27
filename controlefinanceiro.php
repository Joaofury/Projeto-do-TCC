<?php
	include_once('conexao.php');
	// recuperando 
	$nome = $_POST['nome'];
	$data = $_POST['data'];		
	$categoria = $_POST['categoria'];
	$valor = $_POST['valor'];
	// criando a linha de INSERT
	$sqlinsert =  "insert into tab_controlefinanceiro ( nome, data, categoria, valor ) values ('$nome','$data', '$categoria', '$valor')";
	
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
