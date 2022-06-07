<?php  
  session_start(); 
 include_once('conexao.php'); 
    //O campo usuário e senha preenchido entra no if para validar
    if((isset($_POST['email'])) && (isset($_POST['senha']))){
        $email = mysqli_real_escape_string($conn, $_POST['email']); //Escapar de caracteres especiais, como aspas, prevenindo SQL injection
        $senha = mysqli_real_escape_string($conn, $_POST['senha']);
        $senha = md5($senha);
        
        //Buscar na tabela usuario o usuário que corresponde com os dados digitado no formulário
        $result_usuario = "SELECT * FROM tablogin WHERE email = '$email' && senha = '$senha' LIMIT 1";
        $resultado_usuario = mysqli_query($conn, $result_usuario);
        $resultado = mysqli_fetch_assoc($resultado_usuario);
        if(isset($resultado)){
            $_SESSION['email'] = $resultado['email'];
            $_SESSION['senha'] = $resultado['senha'];
            $_SESSION['ID'] = $resultado ['ID'];
            header("Location: index.html");
        }else{    
            //Váriavel global recebendo a mensagem de erro
            $_SESSION['loginErro'] = "Usuário ou senha Inválido";
            echo" <script> alert('Usuário ou senha inválido');
            window.location.replace('login.html');  
            </script>;";
            echo "Ative o javascript";
           
        }
    }
 
 ?>

