    <?php
    require "../conn.php";

    $sql = "DELETE FROM telefone WHERE idCont=" . $_REQUEST["idCont"].";";
    $sql.= "DELETE FROM contato WHERE idCont=". $_REQUEST["idCont"].";";

    
    $res = $conn->multi_query($sql) or die($conn->error);
    if ($res == true) {
        print "<script>alert('Excluiu a mensagem com sucesso!'); window.history.go(-1);</script>";
    } else {
        print "<br><div class='alert alert-danger'>Não foi possível deletar.</div>; window.history.go(-1);";
    }