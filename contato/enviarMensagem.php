<?php
require "../conn.php";
if (isset($_REQUEST['nome'])){
	$nome = mysqli_real_escape_string($conn,$_REQUEST['nome']);
	$email = mysqli_real_escape_string($conn,$_REQUEST['email']); 
	$mensagem = mysqli_real_escape_string($conn,$_REQUEST['mensagem']);
	$telefone = mysqli_real_escape_string($conn,$_REQUEST['telefone']);
	$celular = mysqli_real_escape_string($conn,$_REQUEST['celular']);
	
        $sql = "INSERT INTO contato (nome, email, mensagem) VALUES ('$nome', '$email', '$mensagem');";
        $sql.= "INSERT INTO telefone (telefone, idCont) VALUES ($telefone, (select MAX(idCont) FROM contato));";
        $sql.= "INSERT INTO telefone (telefone, idCont) VALUES ($celular, (select MAX(idCont) FROM contato)); ";

        $conn->multi_query($sql);

		// success
			if($sql){
				echo '<script type="application/javascript">alert("Mensagem enviada com sucesso. Aguarde nosso retorno!"); window.location.href ="/index.php";</script>';

			}else{
				echo '<script type="application/javascript">alert("Houve um problema. Tente novamente...".mysql_error()); window.location.href ="/index.php";</script>';
			}
		}
?>