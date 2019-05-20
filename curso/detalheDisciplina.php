<?php
    $semestre = $_REQUEST['idSemestre'];
    $nomeCurso = $_REQUEST['nomeCurso'];
    $nomedisciplina = $_REQUEST['nomeDisciplina'];
    echo "<h3>".$nomedisciplina." - ".$nomeCurso." - ".$semestre."º Semestre</h3><hr>";
?>
<div>
<a role="button" class="btn btn-info " href="index.php?page=adicionarresumo">Adicionar Novo Resumo</a>
<a role="button" class="btn btn-warning  " href="index.php">Notas</a>
<a role="button" class="btn btn-danger " href="index.php">Faltas</a>

</div>
<hr>
<h4>Resumos</h4>