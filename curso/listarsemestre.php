<?php
session_start();
require "../conn.php";
$sql="select * usuarioCurso where idAluno='".$_SESSION['id']."';";
    $res=mysqli_query($conn,$sql); 
    while($row = $res->fetch_assoc()){
        echo "<div>";
        echo '<span><a role="button" class="btn btn-outline-primary my-2" href="#">Adicionar Lembrete</a></span>';
        echo "</div>";
    }

    /*select * from semestredischistorico where idSemestre in (select idSemestre from usuariocurso where idAluno = 1 and idcurso = 2) para pegar o semestre e a materia

    // select * from disciplinahistorico as h INNER JOIN disciplina as d on d.idDisciplina = h.idDisciplina in (select idSemestre from usuariocurso where idAluno = 1 and idcurso = 2) para pegar o nome das disciplinas

SELECT  

U.IDALUNO AS 'ID_ALUNO',
U.IDSEMESTRE AS 'CODIGO_SEMESTRE',
C.NOMECURSO AS 'NOME_CURSO',
D.NOME AS 'NOME_DISCIPLINA'


FROM USUARIOCURSO U, SEMESTREDISCHISTORICO S, disciplinahistorico DH, disciplina D, CURSO C

WHERE U.idSemestre = S.idSemestre
AND   S.idDiscCursada = DH.idDiscCursada
AND   DH.IDDISCIPLINA = D.IDDISCIPLINA
AND   U.IDCURSO =  C.IDCURSO
AND   IDALUNO = 0; */
 