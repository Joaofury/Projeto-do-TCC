
<?php

require_once('conexao.php');

session_start();



$query_select_financeiro="SELECT * FROM tab_controlefinanceiro WHERE id_user = ".$_SESSION['ID']; 
$sql_select_financeiro=mysqli_query($conn,$query_select_financeiro);
if($sql_select_financeiro == false)
	{
	echo "FALHA AO CONSULTAR A TABELA";
	exit;
	}
?>
 




<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.50">
<link href="css/main.css" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@400;500&display=swap" rel="stylesheet">
<title>Resumo Financeiro</title>
</head>

<body>
  <header>
      <header>
        <div id="header">
         <div class="container-fluid">
         <nav class="navbar navbar-expand-lg navbar-light justify-content-between">
          <div class="container-fluid">
            <a class="navbar-brand" href="#">
              <img src="assets/ppinformatizeBLACK.png" class="img-fluid" />
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                  <a class="nav-link" href="index.html">Home</a>
                </li>
               
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Serviços</a>
                  <ul class="dropdown-menu fade-up" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="verificausuario.php">Controle financeiro</a></li>
                    <li><a class="dropdown-item" href="verificausuario2.php">Resumo financeiro</a></li>
                  </ul>
                <li class="nav-item">
                  <a class="nav-link" href="sobrenos.html">Sobre nós</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link ml-1"  href="verificalogin.php">Login</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link ml-1"  href="deslogar.php">Sair<ion-icon  class="sair" name="exit-outline"></ion-icon></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link ml-1 escuro"  onclick="darkmode()">Modo Escuro</a>
                </li>
              </ul>
            </div>
          </div>
        </nav>
        </div>
        </div>
      
    </header>
<div class="container-fluid">
<h1 class="mt-3" align="center">Olá, <?php echo("{$_SESSION['usuario']}.");?>
</h1>
	<div class="input">
<input type="text"  class="resumo" id="myInput" onkeyup="myFunction()" placeholder="Palavra chave da movimentação" title="Type in a name" />
</div>
<table id="myTable" class="tabela-estilizada">
 <thead>
		  <tr>
			
					<th >Nome da Movimentação</th>
					<th >Data</th>
					<th >Categoria</th>
					<th >Valor</th>
					<th  colspan="2">Opções</th>
		 
			</tr>
	</thead>
<?php  
if(mysqli_num_rows($sql_select_financeiro) > 0)
{
   while($array_select_financeiro=mysqli_fetch_array($sql_select_financeiro))
	{
		$id=$array_select_financeiro["id"];
		//$nome=utf8_encode($array_select_financeiro["nome"]);
		//$sobrenome=utf8_encode($array_select_financeiro["sobrenome"]);
		$nomemov=$array_select_financeiro["nomemov"];
		$data=$array_select_financeiro["data"];
		$categoria=$array_select_financeiro["categoria"];
		$valor=$array_select_financeiro["valor"];
    $id =$array_select_financeiro["id"];
    
 echo
 " <tbody>
   <tr>
    <td>$nomemov</td>
    <td>$data</td>
    <td>$categoria</td>
    <td>$valor R$</td>

	
	
	<!--   É um parâmetro que será passado para o programa deletar_contato.php   -->
	<td><a href=\"delete.php?id=$id\">Deletar</a></td>
  </tr>
  ";
	}
}
?>

  </tbody>
</table>
</div>
<div class="container-fluid text-center">
   <button type=""onclick="window.location.href='verificausuario.php'" class="btnt" href="controlefinanceiro.html">Inserir Movimentações</button>
</div>
</div>
</div></div>
<noscript>
      <meta http-equiv="refresh" content="0;url=ativeojava.html">
     </noscript>
<!-- jQuery, Popper.js, Bootstrap JS -->	
<script  src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="js/bootstrap.min.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script src="js/darkmode.js"></script>
	<script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>

</body>
</html>
