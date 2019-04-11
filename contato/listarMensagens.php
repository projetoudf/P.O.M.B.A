<?php
    $sql = "SELECT * from contato";
    $res = $conn->query($sql);
    $qtd = $res->num_rows;
    ?>

<div class="container-fluid table-responsive">
    <table class="table table-striped table-hover" style="background-color: whitesmoke;">
        <thead class="thead-dark">
        <tr>
            <th scope="col">#</th>
            <th scope="col">Nome</th>
            <th scope="col">Email</th>
            <th scope="col">Telefone</th>
            <th scope="col" class="w-50">Mensagem</th>
            <th scope="col" class="w-10">Excluir</th>
        </tr>
        </thead>
        <tbody>
        <?php while($row = $res->fetch_assoc()){ 
            
            $sqlTel = v"select telefone from telefone where idCont = ".$row['idCont']);
            $result = $sqlTel->fetch_array()
            ?>
        <tr>
            <th scope="row"><?php echo $row['idCont']; ?></th>
            <td><?php echo $row['nome']; ?></td>
            <td><?php echo $row['email']; ?></td>
            <td><?php print implode("/",$result); ?></td>
            <td><?php echo $row['mensagem']; ?></td>
            <td><?php echo '<button onclick="if(confirm(\'tem certeza que deseja excluir a Mensagem '.$row['idCont'].'?\')){location.href=\'contato/deletarMensagem.php?idCont='.$row['idCont'].'\';}else{false;}"  class=\'btn btn-danger\'><i class="fas fa-trash-alt"></i></button>'; ?></td>

        </tr>
        <?php } ?>
        </tbody>
    </table>
</div>