<?php
session_start();
require "../conn.php";
  $id = $_SESSION['id'];
  $curso = $_REQUEST['curso'];
  $semestre = $_REQUEST['semestre'];
  $qtdDisciplinas = $_REQUEST['qtdDisciplinas'];

  $sql = "INSERT INTO usuariocurso (idSemestre, idAluno, idCurso) VALUES ('$semestre', '$id', '$curso');";
  $conn->multi_query($sql);
  echo $sql;
  echo "<br>";
  $insert = null;
  for ($i = 1; $i <= $qtdDisciplinas; $i++) {
    $iddisciplina = $_REQUEST['disciplina' . $i];
    $dia = $_REQUEST['dia' . $i]; 
    $turno = $_REQUEST['turno' . $i]; 
    $horario = $_REQUEST['horario' . $i];
    $nomeprofessor = $_REQUEST['nomeprofessor' . $i];
    $emailprofessor = $_REQUEST['emailprofessor' . $i];
    $insert .= "INSERT INTO disciplinahistorico (diaSemana, horario, turno, nomeProfessor, emailProfessor, idDisciplina ) VALUES ('".$dia."', '".$horario."', '".$turno."', '".$nomeprofessor."', '".$emailprofessor."', '". $iddisciplina."'); ";
    $insert .= "INSERT INTO semestredischistorico (idSemestre, idDiscCursada) VALUES ('$semestre', (select MAX(idDiscCursada) FROM disciplinahistorico));";
  }
  $conn->multi_query($insert);
  echo $insert;

  // success window.location.href ="/index.php";
  if($insert){
    echo '<script type="application/javascript">alert("Salvo com sucesso!");</script> ';

  }else{
    echo '<script type="application/javascript">alert("Houve um problema. Tente novamente...".mysql_error());window.history.go(-1); </script>';
  }
