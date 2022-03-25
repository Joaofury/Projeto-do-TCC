<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--bootstrap -->
    <link rel="stylesheet" href="css/main.css" />
    <title>Document</title>
</head>
<body>
<?php
    //verifica se existe conexão com bd; caso não tenta, cria uma nova
    mysql_connect ("localhost","root","") //porta, usuário, senha
    or die("Erro na conexão com banco de dados"); //caso não consiga conectar mostra a mensagem de erro mostrada na conexão

    $select_db = mysql_select_db("usuarios"); //seleciona o banco de dados

    //Abaixo atribuímos os valores provenientes do formulário pelo método POST
    $senha = $_POST['senha']; 
    $email = $_POST['email'];

    $string_sql = "INSERT INTO tab_usuarios (id,senha,email,) VALUES (null,'$email','$senha')"; //String com consulta SQL da inserção

    mysql_query($string_sql,$conexao); //Realiza a consulta

    ?>
     
    
</body>
</html>



