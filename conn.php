<?php

    function make_hash($str){
        return sha1(md5($str));
    }

    //conexão com o banco de dados
    $host = "localhost";
    $user = "u684394229_root";
    $pass = "udf2019";
    $db   = "u684394229_udf";

    $conn = new mysqli($host,$user,$pass,$db) or die($conn->error);
    if (!mysqli_set_charset($conn, 'utf8')) {
        printf('Error ao usar utf8: %s', mysqli_error($conn));
        exit;
    }
    //Função para o select dos cursos
    function option_curso(){
	global $conn;
	$curso="select * from curso";
	$result = mysqli_query($conn, $curso);	
		echo "<option selected value=''>Selecione o Curso:</option>";
		while($row = $result->fetch_assoc()) {
        echo "<option value='".$row['nomeCurso']."' >" . $row['nomeCurso'] . "</option>";
    }          
}

