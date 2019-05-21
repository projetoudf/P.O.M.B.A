<?php
    require_once $_SERVER['DOCUMENT_ROOT'] . "/conn.php";
    $idcursada = $_REQUEST['idCursada'];
    if (isset($_REQUEST['tipoNota'])){
        $tiponota = $_REQUEST['tipoNota'];
        $valor = $_REQUEST['valor'];
        $idcursada = $_REQUEST['idCursada'];

        $sql = "INSERT INTO notas (tipoNota, valor, idDiscCursada) VALUES ('$tiponota', '$valor', '$idcursada');";
        mysqli_query($conn,$sql);
        if($sql){
            echo '<script type="application/javascript">alert("Nota adicionada com sucesso!"); window.history.go(-2);</script>';

        }else{
            echo '<script type="application/javascript">alert("Houve um problema. Tente novamente...".mysql_error()); window.history.go(-1);</script>';
        }
    }

?>

<form action="notas/adicionarNota.php">
    <h1 class="text-center">Adicionar Falta:</h1><br>
    <div class="container">
        <div class="form-group">
            <label>Tipo de Avaliação</label>
            <input type="text" id="tipoNota" name="tipoNota" class="form-control limiteDeCaracteres" maxlength="40" placeholder="Ex: PRI, Prova 01, Trabalho..." required>
        </div>
        <div class="form-group">
            <label>Nota obtida:</label>
            <input type="text" pattern= "[0-9]+(\.[0-9]{0,2})?%?" title="Somente números" id="valor" name="valor" class="form-control limiteDeCaracteres" maxlength="50" required>
        </div>

        <input type="hidden" name="idCursada" value="<?php echo $idcursada; ?>">

        <div class="form-row col mt-5">
            <a role="button" class="btn btn-danger btn-lg" href="javascript:window.history.go(-1);">Cancelar</a>
            <button type="submit" class="btn btn-primary btn-lg ml-auto">Salvar</button>
        </div>
    </div>
</form>