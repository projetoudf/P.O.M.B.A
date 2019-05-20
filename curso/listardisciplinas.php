<?php
    $semestre = $_REQUEST['idSemestre'];
    $nomeCurso = $_REQUEST['nomeCurso'];

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



    $sql="SELECT  

    U.IDALUNO AS 'ID_ALUNO',
    U.IDSEMESTRE AS 'CODIGO_SEMESTRE',
    C.NOMECURSO AS 'NOME_CURSO',
    D.NOME AS 'NOME_DISCIPLINA'
    
    
    FROM USUARIOCURSO U, SEMESTREDISCHISTORICO S, disciplinahistorico DH, disciplina D, CURSO C
    
    WHERE U.idSemestre = S.idSemestre
    AND   S.idDiscCursada = DH.idDiscCursada
    AND   DH.IDDISCIPLINA = D.IDDISCIPLINA
    AND   U.IDCURSO =  C.IDCURSO
    AND   U.idAluno ='".$_SESSION['id']."'
    AND   U.idSemestre = '".$semestre."';";
    $res=mysqli_query($conn,$sql); 
    while($row = $res->fetch_assoc()){
        echo "<div>";
        echo "<span><a role=\"button\" class=\"btn btn-outline-primary my-2\" href=\"index.php?page=detalhedisciplina&nomeDisciplina=".$row['NOME_DISCIPLINA']."&idSemestre=".$semestre."&nomeCurso=".$nomeCurso."\">".$row['NOME_DISCIPLINA']."</a></span>";
        echo "</div>";
    }