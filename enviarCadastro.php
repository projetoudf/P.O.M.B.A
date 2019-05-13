<?php
session_start();
require "conn.php";
if (isset($_REQUEST['nome'])){
	$nome = mysqli_real_escape_string($conn,$_REQUEST['nome']);
	$dataNascimento = mysqli_real_escape_string($conn,$_REQUEST['dataNascimento']); 
	$sexo = mysqli_real_escape_string($conn,$_REQUEST['sexo']);
	$email = mysqli_real_escape_string($conn,$_REQUEST['email']);
	$senha = mysqli_real_escape_string($conn,make_hash($_REQUEST['senha']));
	
	//checar se o email ja esta cadastrado
	$sql="select * from usuario where (email='$email');";
	$res=mysqli_query($conn,$sql);
	if (mysqli_num_rows($res) > 0) {
		// output data of each row
		$row = mysqli_fetch_assoc($res);
		if ($email==$row['email'])
		{
			echo '<script type="application/javascript">alert("Este email já está sendo utilizado".mysql_error()); window.history.go(-1);</script>';
		}
	}else{
	
		$sql = "INSERT INTO usuario (nome, dataNascimento, sexo, email, senha) VALUES ('$nome', '$dataNascimento', '$sexo', '$email', '$senha')";
		mysqli_query($conn,$sql);
		// success
			if($sql){
				echo '<script type="application/javascript">alert("Registro realizado. Faça o Login!"); window.location.href ="index.php";</script>';

			}else{
				echo '<script type="application/javascript">alert("Houve um problema. Tente novamente...".mysql_error()); window.location.href ="index.php";</script>';
			}
		}
	}
?>