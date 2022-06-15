
<?php
require_once('conexao.php');
if(isset($_GET["id"]))
{
	
  
	
  $id=$_GET["id"];
  
  //$query="DELETE FROM id WHERE id={$_GET['id']}";
  $query="DELETE FROM tab_controlefinanceiro WHERE id =$id";
  $sql=mysqli_query($conn,$query);
  if($sql)
  {
	  header("Location:resumofinanceiro.php");
  }
  else
  {
	echo"<script type=\"text/javascript\">alert('FALHA AO DELETAR.ENTRE EM CONTATO COM O ADMINISTRADOR DO SITE');</script>";    
	exit;
  }
}

	




?> 