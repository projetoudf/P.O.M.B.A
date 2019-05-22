<?php
    $semestre = $_REQUEST['idSemestre'];
    $nomeCurso = $_REQUEST['nomeCurso'];
    $idcurso = $_REQUEST['idCurso'];

    echo "<div class=\"container-fluid\">";
    echo "<div class=\"row\">";
    echo "<h3>".$nomeCurso." - ".$semestre."º Semestre </h3>";
    echo '<!-- Botão para acionar modal -->
    <button type="button" class="btn btn-danger ml-auto" data-toggle="modal" data-target="#comoexcluir">
    <i class="fas fa-trash-alt"></i></button>';
    echo "</div>";
    echo "</div>";
?>
    
<HR>
<div>
    <a role="button" class="btn btn-info " href="index.php?page=novadisciplina&idCurso=<?php echo $idcurso; ?>&idSemestre=<?php echo $semestre; ?>">Adicionar Nova Disciplina</a>
</div>

<HR>
<H4>Disciplinas cadastradas:</H4>



<!-- Modal -->
<div class="modal fade" id="comoexcluir" tabindex="-1" role="dialog" aria-labelledby="TituloModalCentralizado" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="TituloModalCentralizado">Como excluir o curso?</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Para excluir o curso do seu perfil basta excluir todas as disciplinas! <b>**Mas cuidado. Uma vez excluído, não é possível recuperar!**</b>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
      </div>
    </div>
  </div>
</div>
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

    