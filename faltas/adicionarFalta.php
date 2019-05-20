<?php
    require_once $_SERVER['DOCUMENT_ROOT'] . "/conn.php";
    $idcursada = $_REQUEST['idCursada'];
    if (isset($_REQUEST['data'])){
        $data = $_REQUEST['data'];
        $quantidade = $_REQUEST['quantidade'];
        $idcursada = $_REQUEST['idCursada'];

        $sql = "INSERT INTO falta (diaFalta, qtdFalta, idDiscCursada) VALUES ('$data', '$quantidade', '$idcursada');";
        echo $sql;
        mysqli_query($conn,$sql);
        if($sql){
            echo '<script type="application/javascript">alert("Falta adicionada com sucesso!"); window.history.go(-2);</script>';

        }else{
            echo '<script type="application/javascript">alert("Houve um problema. Tente novamente...".mysql_error()); window.history.go(-1);</script>';
        }
    }

?>

<form action="faltas/adicionarFalta.php">
    <h1 class="text-center">Adicionar Falta:</h1><br>
    <div class="container">
        <div class="form-group">
            <label>Data</label>
            <input type="date" id="data" name="data" class="form-control limiteDeCaracteres" maxlength="50" required>
        </div>
        <div class="form-group">
            <label>Quantidade</label>
            <input type="text" pattern= "[0-9]+" title="Somente números" id="quantidade" name="quantidade" class="form-control limiteDeCaracteres" maxlength="50" required>
        </div>

        <input type="hidden" name="idCursada" value="<?php echo $idcursada; ?>">

        <div class="form-row col mt-5">
            <a role="button" class="btn btn-danger btn-lg" href="javascript:window.history.go(-1);">Cancelar</a>
            <button type="submit" class="btn btn-primary btn-lg ml-auto">Salvar</button>
        </div>
    </div>
</form>