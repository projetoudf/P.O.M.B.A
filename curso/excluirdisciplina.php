<?php
    require "../conn.php";

    $sql = "DELETE FROM usuarioCurso WHERE idDiscCursada='". $_REQUEST["idCursada"]."';";
    $sql .= "DELETE FROM notas WHERE idDiscCursada ='".$_REQUEST['idCursada']."';";
    $sql .= "DELETE FROM resumos WHERE idDiscCursada ='".$_REQUEST['idCursada']."';";
    $sql .= "DELETE FROM falta WHERE idDiscCursada ='".$_REQUEST['idCursada']."';";
    $sql .= "DELETE FROM disciplinaHistorico WHERE idDiscCursada ='".$_REQUEST['idCursada']."';";
    
    $res = $conn->multi_query($sql) or die($conn->error);
    if ($res == true) {
        print "<script>alert('Excluiu a falta com sucesso!');window.history.go(-2)</script>";
    } else {
        print "<br><div class='alert alert-danger'>Não foi possível deletar.</div>; window.history.go(-1);";
    }