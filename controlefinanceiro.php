<?php
	include_once('conexao.php');
	// recuperando 
	$nomemov = $_POST['nomemov'];
	$data = $_POST['data'];		
	$categoria = $_POST['categoria'];
	$valor = $_POST['valor'];
	// criando a linha de INSERT
	$sqlinsert =  "insert into tab_controlefinanceiro ( nomemov, data, categoria, valor ) values ('$nomemov','$data', '$categoria', '$valor')";
	
	// executando instrução SQL
 $resultado = @mysqli_query($conn, $sqlinsert);

	if (!$resultado) {
		die('Query Inválida: ' . @mysqli_error($conn));  
	} else {
		echo "<script>
			  window.location.replace('controlefinanceiro.html');
			  </script>;";
	} 


		
	
	mysqli_close($conn);
?>
