<?php
if (isset($_REQUEST['nome'])){
		$nome = $_REQUEST['nome'];
		$dataNascimento = $_REQUEST['dataNascimento']; 
		$sexo = $_REQUEST['sexo'];
		$email = $_REQUEST['email'];
		$senha = make_hash($_REQUEST['senha']); 
		$sql = "INSERT INTO cadastro (nome,dataNascimento,sexo,email,senha) VALUES ('$nome', '$nascimento', '$sexo', '$email', '$senha')";
		mysqli_query($db,$sql);
		// success
		if($sql){
            echo '<script type="application/javascript">alert("Registro realizado. Faça o Login!"); window.location.href ="index.php";</script>';

		}else{
			echo '<script type="application/javascript">alert("Houve um problema. Tente novamente...".mysql_error()); window.location.href ="index.php";</script>';
		}
}
?>

<h2 class="text-center">Cadastro</h2>
<h4 class="text-center">Preencha o formulário e clique em enviar</h4>
<form>
    <div class="form-row col">

        <div class="form-group col-md-6">
            <label for="nome">Nome</label>
            <input type="text" class="form-control" id="nome" name="nome" placeholder="Nome">
        </div>
        <div class="form-group col-md-6">
            <label for="email">Email</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Email">
        </div>
    </div>
    <div class="form-row col">
        <div class="form-group col-md-6">
            <label for="dataNascimento">Data de nascimento</label>
            <input type="date" class="form-control" id="dataNascimento" name="dataNascimento" placeholder="Data de nascimento">
        </div>
        <div class="form-group col-md-6">
            <label for="sexo">Sexo</label>
            <select id="sexo" class="form-control">
                <option selected>Escolher...</option>
                <option value="masculino">Masculino</option>
                <option value="feminino">Feminino</option>
                <option value="nf">Não informado</option>
            </select>
        </div>
    </div>
    <div class="form-row col">
        <div class="form-group col-md-6">
            <label for="senha">Senha</label>
            <input type="password" class="form-control" id="senha" placeholder="Senha">
        </div>
        <div class="form-group col-md-6">
            <label for="confirmarSenha">Confirme a Senha</label>
            <input type="password" class="form-control" id="confirmarSenha" placeholder="Confirme a Senha">
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