<div>
    <span><a role="button" class="btn btn-success my-2" href="index.php?page=adicionarLembrete">Adicionar Lembrete</a></span>

</div>

<?php
$id = $_SESSION['id']; 

$sql="select * from lembretes where (idAluno='$id');";
$res=mysqli_query($conn,$sql);
echo    "<div class=\"row\">";

while($row = $res->fetch_assoc()){

echo        "<div class=\"card m-1\" style=\"width: 18rem;\">";
echo            "<div class=\"card-body\">";
echo                "<h5 class=\"card-title\">".$row['titulo']."</h5>";
echo                "<h6 class=\"card-subtitle mb-2 text-muted\">".$row['data']."</h6>";
echo                "<pre><p class=\"card-text\">".$row['conteudo']."</p></pre>";
echo '<button onclick="if(confirm(\'tem certeza que deseja excluir o Lembrete '.$row['idLembrete'].'?\')){location.href=\'lembretes/excluirLembrete.php?idLembrete='.$row['idLembrete'].'\';}else{false;}"  class=\'btn btn-danger btn-sm\'><i class="fas fa-trash-alt"></i></button>';
echo            "</div>";
echo        "</div>";
}
echo    "</div>";

?>