<?php
include 'config.php';


$email = mysqli_real_escape_string($conn,$_POST['email_login']);
$senha = mysqli_real_escape_string($conn,make_hash($_POST['senha_login']));
 
$query = "select * from usuario where email = '$email' and senha = '$senha'";
 
$result = mysqli_query($conn, $query);
 
$row = mysqli_num_rows($result);
$dados = mysqli_fetch_array($result);
if($row == 1) {
	session_start();
	$_SESSION['email'] = $dados['email'];
	$_SESSION['nome'] = $dados['nome'];
    $_SESSION['sexo'] = $dados['sexo'];
	$_SESSION['id'] = $dados['idAluno'];
	$_SESSION['admin'] = $dados['admin'];

	$sql = "INSERT INTO LOG (data, ip, browser, idAluno) VALUES (now(), '".$_SERVER['REMOTE_ADDR']."', '".$_SERVER['HTTP_USER_AGENT']."', '".$_SESSION['id']."');";
	mysqli_query($conn, $sql);
	header('Location: index.php');

	exit();
} else {
	$sql = "INSERT INTO LOG (data, ip, browser, idAluno) VALUES (now(), '".$_SERVER['REMOTE_ADDR']."', '".$_SERVER['HTTP_USER_AGENT']."', null);";
	mysqli_query($conn, $sql);
	echo '<script type="application/javascript">alert("Login OU Senha INCORRETOS. TENTE NOVAMENTE."); window.location.href ="index.php";</script>';
	exit();
}
