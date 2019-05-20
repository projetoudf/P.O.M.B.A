<?php
    require_once $_SERVER['DOCUMENT_ROOT'] . "/conn.php";
    $idcursada = $_REQUEST['idCursada'];
    if (isset($_REQUEST['titulo'])){
        $titulo = $_REQUEST['titulo'];
        $conteudo = $_REQUEST['conteudo'];
        $idcursada = $_REQUEST['idCursada'];

        $sql = "INSERT INTO resumos (tituloResumo, conteudoResumo, idDiscCursada) VALUES ('$titulo', '$conteudo', '$idcursada');";
        echo $sql;
        mysqli_query($conn,$sql);
        if($sql){
            echo '<script type="application/javascript">alert("Resumo salvo com sucesso!"); window.history.go(-2);</script>';

        }else{
            echo '<script type="application/javascript">alert("Houve um problema. Tente novamente...".mysql_error()); window.history.go(-1);</script>';
        }
    }

?>

<form action="resumo/adicionarResumo.php">
    <h1 class="text-center">Adicionar um Resumo:</h1><br>
    <div class="container">
        <div class="form-group">
            <label>Título</label>
            <input type="text" id="titulo" name="titulo" class="form-control limiteDeCaracteres" maxlength="50" required>
        </div>
        <div class="form-group">
            <label>Conteúdo</label>
            <textarea class="form-control limiteDeCaracteres" id="conteudo" name="conteudo" rows="15" cols="20" maxlength="3000" required></textarea>
        </div>

        <input type="hidden" name="idCursada" value="<?php echo $idcursada; ?>">

        <div class="form-row col mt-5">
            <a role="button" class="btn btn-danger btn-lg" href="javascript:window.history.go(-1);">Cancelar</a>
            <button type="submit" class="btn btn-primary btn-lg ml-auto">Salvar</button>
        </div>
    </div>
</form>


