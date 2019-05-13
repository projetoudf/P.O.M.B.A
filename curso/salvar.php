<?php
  $id = $_SESSION['id'];
  $curso = $_REQUEST['curso'];
  $semestre = $_REQUEST['semestre'];
  $qtdDisciplinas = $_REQUEST['qtdDisciplinas'];
  for ($i = 1; $i <= $qtdDisciplinas; $i++) {
    ${'iddisciplina' . $i} = $_REQUEST['disciplina' . $i];
    ${'dia' . $i} = $_REQUEST['dia' . $i]; 
    ${'turno' . $i} = $_REQUEST['turno' . $i]; 
    ${'horario' . $i} = $_REQUEST['horario' . $i];
    ${'nomeprofessor' . $i} = $_REQUEST['nomeprofessor' . $i];
    ${'emailprofessor' . $i} = $_REQUEST['emailprofessor' . $i];

  }
  $sql = "INSERT INTO usuariocurso (idsemestre, idaluno, idcurso) VALUES ('$semestre', '$id', '$curso');";
  for ($i = 1; $i <= $qtdDisciplinas; $i++){
  $sql .= "INSERT INTO disciplinahistorico (diasemana, horario, turno, nomeprofessor, emailprofessor, iddisciplina ) VALUES ('$dia.$i', '$dia.$i', '$horario.$i', '$turno.$i', '$nomeprofessor.$i', '$emailprofessor.$i', '$iddisciplina.$i'; ";
  $sql .= "INSERT INTO semestredischistorico (idsemestre, iddisccursada) VALUES ('$semestre', (select MAX(idDiscCursada) FROM disciplinaHistorico));";
  }
  $conn->multi_query($sql);
