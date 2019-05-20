<?php
    require "../conn.php";

    $sql = "DELETE FROM falta WHERE idFalta=" . $_REQUEST["idFalta"].";";
    
    $res = $conn->multi_query($sql) or die($conn->error);
    if ($res == true) {
        print "<script>alert('Excluiu a falta com sucesso!'); window.history.go(-1);</script>";
    } else {
        print "<br><div class='alert alert-danger'>Não foi possível deletar.</div>; window.history.go(-1);";
    }