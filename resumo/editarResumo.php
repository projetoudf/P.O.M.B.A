<?php
    require_once $_SERVER['DOCUMENT_ROOT'] . "/conn.php";

    $idresumo = $_REQUEST['idresumo'];
    $sql = "SELECT * FROM resumos WHERE idresumo = ".$_REQUEST["idresumo"];
    $resultado = mysqli_query($conn,$sql);
    $row = $resultado->fetch_assoc();

    if (isset($_REQUEST["titulo"])) {
        $titulo = $_REQUEST['titulo'];
        $conteudo = $_REQUEST['conteudo'];
        $idresumo = $_REQUEST['idresumo'];
        $sql = "UPDATE resumos SET tituloResumo='$titulo', conteudoResumo='$conteudo' WHERE idResumo = '".$idresumo."';";
        mysqli_query($conn,$sql);
        echo $sql;
        if($sql){
            echo '<script type="application/javascript">alert("Resumo atualizado!"); window.history.go(-2); </script>';

        }else{
            echo '<script type="application/javascript">alert("Houve um problema. Tente novamente...".mysql_error()); window.history.go(-1);</script>';
        } 
    }
?>

<form action="resumo/editarResumo.php">
    <h1 class="text-center">Editar o Resumo:</h1><br>
    <div class="container">
        <div class="form-group">
            <label>Título</label>
            <input type="text" id="titulo" name="titulo" class="form-control limiteDeCaracteres" maxlength="50" value="<?php echo $row['tituloResumo']; ?>" required>
        </div>
        <div class="form-group">
            <label>Conteúdo</label>
            <textarea class="form-control limiteDeCaracteres" id="conteudo" name="conteudo" rows="15" cols="20" maxlength="3000" required><?php echo $row['conteudoResumo']; ?></textarea>
        </div>

        <input type="hidden" name="idresumo" value="<?php echo $idresumo; ?>">

        <div class="form-row col mt-5">
            <a role="button" class="btn btn-danger btn-lg" href="javascript:window.history.go(-1);">Cancelar</a>
            <button type="submit" class="btn btn-primary btn-lg ml-auto">Salvar</button>
        </div>
    </div>
</form>