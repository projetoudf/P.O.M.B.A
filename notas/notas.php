<?php
    setlocale(LC_TIME, 'pt_BR', 'pt_BR.utf-8', 'pt_BR.utf-8', 'portuguese');
    date_default_timezone_set('America/Sao_Paulo');
    $idcursada = $_REQUEST['idCursada'];
    $nomedisciplina = $_REQUEST['nomedisciplina'];
    $semestre = $_REQUEST['semestre'];
?>

<div>
<a role="button" class="btn btn-info " href="index.php?page=adicionarnota&idCursada=<?php echo $idcursada; ?>">Adicionar Nova Nota</a>
<a role="button" class="btn btn-danger float-right" href="javascript:window.history.go(-1);">Voltar</a>

</div>
<hr>
<h4>Notas - <?php echo $nomedisciplina . " - " . $semestre ."º Semestre";?></h4>

<?php
    $sql = "SELECT * 
            FROM notas 
            WHERE idDiscCursada = '".$idcursada."';";
    
    $res=mysqli_query($conn,$sql);
    echo "<div class=\"table-responsive\">";
    echo "<table class=\"table table-bordered table-hover\">";
    echo "<thead class=\"thead-light\">";
    echo "<tr>";
    echo "<th scope=\"col\">Avaliação</th>";
    echo "<th scope=\"col\">Nota Obtida</th>";
    echo "<th scope=\"col\">Excluir</th>";
    echo "</tr>";
    echo "</thead>";
    echo "<tbody>";
    $total = 0; 
    while($row = $res->fetch_assoc()){
        echo "<tr>";
        echo "<td>".$row['tipoNota']."</td>";
        echo "<td>".$row['valor']."</td>";
        echo '<td class="text-center"><button onclick="if(confirm(\'tem certeza que deseja excluir a Nota '.$row['tipoNota'].'?\')){location.href=\'notas/excluirNota.php?idNota='.$row['idNota'].'\';}else{false;}"  class=\'btn btn-danger btn-sm\'><i class="fas fa-trash-alt"></i></button></td>';
        echo "</tr>";
        $total += $row['valor'];
    }
    echo "</tbody>";
    echo "<thead class=\"thead-light\">";
    echo "<tr>";
    echo "<th scope=\"col\">Total</th>";
    echo "<th scope=\"col\">".$total."</th>";
    echo "<th scope=\"col\"></th>";
    echo "</tr>";
    echo "</thead>";
    echo "</div>";