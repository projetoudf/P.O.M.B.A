<?php
    $semestre = $_REQUEST['idSemestre'];
    $nomeCurso = $_REQUEST['nomeCurso'];
    $nomedisciplina = $_REQUEST['nomeDisciplina'];
    $idcursada = $_REQUEST['idCursada'];
    echo "<div class=\"container\">";
    echo "<div class=\"row\">";
    echo "<h4>".$nomedisciplina." - ".$nomeCurso." - ".$semestre."º Semestre</h4>";
    echo '<button onclick="if(confirm(\'tem certeza que deseja excluir o A DISCIPLINA '.$nomedisciplina.' do '.$semestre.'º SEMESTRE DO CURSO '.$nomeCurso.'? ESTA AÇÃO NÃO PODE SER DESFEITA!!!\')){location.href=\'curso/excluirdisciplina.php?idCursada='.$idcursada.'\';}else{false;}"  class=\'btn btn-danger btn-sm ml-auto\'><i class="fas fa-trash-alt"></i></button>';
    echo "</div>";
    echo "</div>";
    echo "<hr>";

    
?>
<div>
<a role="button" class="btn btn-info " href="index.php?page=adicionarresumo&idCursada=<?php echo $idcursada; ?>">Adicionar Novo Resumo</a>
<a role="button" class="btn btn-warning  " href="index.php?page=notas&idCursada=<?php echo $idcursada; ?>&nomedisciplina=<?php echo $nomedisciplina; ?>&semestre=<?php echo $semestre; ?>">Notas</a>
<a role="button" class="btn btn-danger " href="index.php?page=faltas&idCursada=<?php echo $idcursada; ?>&nomedisciplina=<?php echo $nomedisciplina; ?>&semestre=<?php echo $semestre; ?>">Faltas</a>
<a role="button" class="btn btn-danger float-right" href="javascript:window.history.go(-1);">Voltar</a>


</div>
<hr>
<h4>Resumos</h4>

<?php
    $sql = "SELECT * 
            FROM resumos 
            WHERE idDiscCursada = '".$idcursada."';";
    
    $res=mysqli_query($conn,$sql);
    echo "<div class=\"table-responsive\">";
    echo "<table class=\"table table-striped table-bordered table-hover\">";
    echo "<tbody>"; 
    while($row = $res->fetch_assoc()){
        echo "<tr>";
        echo "<td><a href=\"index.php?page=editarresumo&idresumo=".$row['idResumo']."\"><div style=\"height:100%;width:100%\">".$row['tituloResumo']."</div></a></td>";
        echo '<td class="text-center"><button onclick="if(confirm(\'tem certeza que deseja excluir o RESUMO '.$row['idResumo'].'?\')){location.href=\'resumo/excluirResumo.php?idResumo='.$row['idResumo'].'\';}else{false;}"  class=\'btn btn-danger btn-sm\'><i class="fas fa-trash-alt"></i></button></td>';
        echo "</tr>";
    }
    echo "</tbody>";
    echo "</div>";