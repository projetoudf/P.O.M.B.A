<?php
    if (session_status() == PHP_SESSION_NONE) {
        session_start();
    }    
    require_once $_SERVER['DOCUMENT_ROOT'] . "/conn.php";

    $idAluno = $_SESSION['id'];
    $sql = "SELECT * FROM usuario WHERE idAluno = ".$_SESSION['id'];
    $resultado = mysqli_query($conn,$sql);
    $row = $resultado->fetch_assoc();

    if (isset($_REQUEST["nome"])) {
        $nome = mysqli_real_escape_string($conn,$_REQUEST['nome']);
        $dataNascimento = mysqli_real_escape_string($conn,$_REQUEST['dataNascimento']); 
        $sexo = mysqli_real_escape_string($conn,$_REQUEST['sexo']);
        $email = mysqli_real_escape_string($conn,$_REQUEST['email']);
        $sql = "UPDATE usuario SET nome='$nome', dataNascimento='$dataNascimento', sexo='$sexo', email='$email'";
        if (isset($_REQUEST['senha']) && $_REQUEST['senha'] != null){
            $senha = mysqli_real_escape_string($conn,make_hash($_REQUEST['senha']));
            $sql .= ", senha='$senha'";
        }
        $sql .=" WHERE idAluno ='".$idAluno."';";
        mysqli_query($conn,$sql);

        echo $sql;
        // success window.history.go(-2); 
        if($sql){
            echo '<script type="application/javascript">alert("Perfil atualizado!"); </script>';

        }else{
            echo '<script type="application/javascript">alert("Houve um problema. Tente novamente...".mysql_error()); window.history.go(-1);</script>';
        }
    }
?> 

<h2 class="text-center">Cadastro</h2>
<h4 class="text-center">Preencha o formulário e clique em enviar</h4>
<form action="perfil.php">
    <div class="form-row col">

        <div class="form-group col-md-6">
            <label for="nome">Nome</label>
            <input type="text" class="form-control" id="nome" name="nome" placeholder="Nome" value="<?php echo $row['nome']; ?>">
        </div>
        <div class="form-group col-md-6">
            <label for="email">Email</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Email" value="<?php echo $row['email']; ?>">
        </div>
    </div>
    <div class="form-row col">
        <div class="form-group col-md-6">
            <label for="dataNascimento">Data de nascimento</label>
            <input type="date" class="form-control" id="dataNascimento" name="dataNascimento" placeholder="Data de nascimento" value="<?php echo $row['dataNascimento']; ?>">
        </div>
        <div class="form-group col-md-6">
            <label for="sexo">Sexo</label>
            <select id="sexo" name="sexo" class="form-control">
                <option>Escolher...</option>
                <option value="masculino" <?php if($row['sexo'] == 'masculino') echo "selected"; ?>>Masculino</option>
                <option value="feminino" <?php if($row['sexo'] == 'feminino') echo "selected"; ?>>Feminino</option>
                <option value="nf"<?php if($row['sexo'] == 'nf') echo "selected"; ?>>Não informado</option>
            </select>
        </div>
    </div>
    <div class="form-row col">
        <div class="form-group col-md-6">
            <label for="senha">Senha</label>
            <input type="password" class="form-control" id="senha" name="senha" placeholder="PREENCHA SOMENTE SE QUISER ALTERAR A SENHA">
        </div>
        <div class="form-group col-md-6">
            <label for="confirmarSenha">Confirme a Senha</label>
            <input type="password" class="form-control" id="confirmarSenha" placeholder="PREENCHA SOMENTE SE QUISER ALTERAR A SENHA">
        </div>
    </div>
    <div class="form-row col">
        <a role="button" class="btn btn-danger btn-lg" href="index.php">Cancelar</a>

        <button type="submit" class="btn btn-primary btn-lg ml-auto">Enviar</button>
    </div>


</form>
<script type="text/javascript">
    var senha = document.getElementById("senha"),
    confirmarSenha = document.getElementById("confirmarSenha");

    function validatePassword(){
        if(senha.value != confirmarSenha.value) {
            confirmarSenha.setCustomValidity("As senhas não conferem!");
        } else {
            confirmarSenha.setCustomValidity('');
        }
    }

    senha.onchange = validatePassword;
    confirmarSenha.onkeyup = validatePassword;
</script>