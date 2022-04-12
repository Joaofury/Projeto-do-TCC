         
<?php
	include_once('conexao.php');
	// recuperando 
	$email = $_POST['email'];
	$usuario = $_POST['usuario'];		
	$senha = md5($_POST['senha']);
	// criando a linha de INSERT
	$sqlinsert =  "insert into tablogin ( email,usuario, senha) values ('$email','$usuario', '$senha')";
	
	// executando instrução SQL
 $resultado = @mysqli_query($conn, $sqlinsert);
//$resultado = @mysqli_query($conexao, "insert into tabelaimg ( codigo,produto, descricao, data, valor) values ('$codigo','$produto', '$descricao', '$data', $valor)");
if ($senha<8){ //Se X enviado for maior que 3, da erro.Troque o 3 pelo numero que quiser!
	echo "senha curta";
	}
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
