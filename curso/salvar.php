<?php
session_start();
require "../conn.php";
  $id = $_SESSION['id'];
  $curso = $_REQUEST['curso'];
  $semestre = $_REQUEST['semestre'];
  $qtdDisciplinas = $_REQUEST['qtdDisciplinas'];
  $insert = null;
  for ($i = 1; $i <= $qtdDisciplinas; $i++) {
    $iddisciplina = $_REQUEST['disciplina' . $i];
    $dia = $_REQUEST['dia' . $i]; 
    $turno = $_REQUEST['turno' . $i]; 
    $horario = $_REQUEST['horario' . $i];
    $nomeprofessor = $_REQUEST['nomeprofessor' . $i];
    $emailprofessor = $_REQUEST['emailprofessor' . $i];
    $insert .= "INSERT INTO disciplinaHistorico (diaSemana, horario, turno, nomeProfessor, emailProfessor, idDisciplina ) VALUES ('".$dia."', '".$horario."', '".$turno."', '".$nomeprofessor."', '".$emailprofessor."', '". $iddisciplina."'); ";
    $insert .= "INSERT INTO usuarioCurso (idSemestre, idAluno, idCurso, idDiscCursada) VALUES ('$semestre', '$id', '$curso', (select MAX(idDiscCursada) FROM disciplinaHistorico));";
  }
  $conn->multi_query($insert);

  // success 
  if($insert){
    echo '<script type="application/javascript">alert("Salvo com sucesso!");window.location.href ="/index.php";</script> ';

  }else{
    echo '<script type="application/javascript">alert("Houve um problema. Tente novamente...".mysql_error());window.history.go(-1); </script>';
  }

  