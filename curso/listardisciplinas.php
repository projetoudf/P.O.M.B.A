<?php
    $semestre = $_REQUEST['idSemestre'];
    $nomeCurso = $_REQUEST['nomeCurso'];
    $idcurso = $_REQUEST['idCurso'];

    echo "<h3>".$nomeCurso." - ".$semestre."º Semestre </h3>";
?>
<!-- Incluir um método de adicionar mais disciplinas aos cursos já cadastrados #TODO
    
<HR>
<div>
    <a role="button" class="btn btn-info ml-auto" href="">Incluir Novas Disciplinas</a>
</div>

-->
<HR>
<H4>Disciplinas cadastradas:</H4>

<?php



    $sql="SELECT usuario.idAluno as 'ID_ALUNO',
                disciplina.nome AS 'NOME_DISCIPLINA',
                curso.nomeCurso AS 'NOME_CURSO', 
                disciplinaHistorico.idDiscCursada AS 'ID_CURSADA'

        FROM usuarioCurso

        INNER JOIN curso ON curso.idCurso = usuarioCurso.idCurso
        INNER JOIN semestre ON semestre.idSemestre = usuarioCurso.idSemestre
        INNER JOIN usuario ON usuario.idAluno = usuarioCurso.idAluno
        INNER JOIN disciplinaHistorico ON disciplinaHistorico.idDiscCursada = usuarioCurso.idDiscCursada
        INNER JOIN disciplina ON disciplina.idDisciplina = disciplinaHistorico.idDisciplina
        WHERE   usuarioCurso.idAluno ='".$_SESSION['id']."'
        AND   usuarioCurso.idSemestre = '".$semestre."'
        AND   usuarioCurso.IDCURSO = '".$idcurso."';";
    $res=mysqli_query($conn,$sql); 

    while($row = $res->fetch_assoc()){
        echo "<div>";
        echo "<span><a role=\"button\" class=\"btn btn-outline-primary my-2\" href=\"index.php?page=detalhedisciplina&nomeDisciplina=".$row['NOME_DISCIPLINA']."&idCursada=".$row['ID_CURSADA']."&idSemestre=".$semestre."&nomeCurso=".$nomeCurso."\">".$row['NOME_DISCIPLINA']."</a></span>";
        echo "</div>";
    }