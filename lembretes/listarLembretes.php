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
echo                "<p class=\"card-text\">".$row['conteudo']."</p>";
echo                "<a href=\"#\" class=\"card-link float-right\"><i class=\"fas fa-trash\"></i></a>";
echo            "</div>";
echo        "</div>";
}
echo    "</div>";

?>
