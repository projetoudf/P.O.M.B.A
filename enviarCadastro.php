<?php
require "conn.php";
if (isset($_REQUEST['nome'])){
		$nome = mysqli_real_escape_string($conn,$_REQUEST['nome']);
		$dataNascimento = mysqli_real_escape_string($conn,$_REQUEST['dataNascimento']); 
		$sexo = mysqli_real_escape_string($conn,$_REQUEST['sexo']);
		$email = mysqli_real_escape_string($conn,$_REQUEST['email']);
		$senha = mysqli_real_escape_string($conn,make_hash($_REQUEST['senha'])); 
		$sql = "INSERT INTO usuarios (nome, dataNascimento, sexo, email, senha) VALUES ('$nome', '$dataNascimento', '$sexo', '$email', '$senha')";
		mysqli_query($conn,$sql);
		// success
		if($sql){
            echo '<script type="application/javascript">alert("Registro realizado. Faça o Login!"); window.location.href ="index.php";</script>';

		}else{
			echo '<script type="application/javascript">alert("Houve um problema. Tente novamente...".mysql_error()); window.location.href ="index.php";</script>';
		}
}
?>