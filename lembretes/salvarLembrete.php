<?php
session_start();
require "../conn.php";
	$titulo = mysqli_real_escape_string($conn,$_REQUEST['titulo']);
    $conteudo = mysqli_real_escape_string($conn,$_REQUEST['conteudo']);
    $id = $_SESSION['id']; 
	
        $sql = "INSERT INTO lembretes (data, titulo, conteudo, idAluno) VALUES (now(),'$titulo', '$conteudo', '$id');";

        $conn->query($sql);

		// success
			if($sql){
				echo '<script type="application/javascript">alert("Lembrete salvo com sucesso!"); window.location.href ="/index.php?page=lembretes";</script>';

			}else{
				echo '<script type="application/javascript">alert("Houve um problema. Tente novamente...".mysql_error()); window.history.go(-1);</script>';
			}
		
?>