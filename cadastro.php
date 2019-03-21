<form>
    <div class="form-group">
        <label for="nome">Nome</label>
        <input type="text" class="form-control" id="nome" placeholder="Nome">
    </div>
    <div class="form-group">
        <label for="email">Nome</label>
        <input type="email" class="form-control" id="email" placeholder="Email">
    </div>
    <div class="form-group col">
        <label for="dataNascimento">Data de nascimento</label>
        <input type="date" class="form-control" id="dataNascimento" placeholder="Data de nascimento">
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
    <div class="form-group col-md-5">
        <label for="sexo">Sexo</label>
        <select id="sexo" class="form-control">
            <option selected>Escolher...</option>
            <option value="masculino">Masculino</option>
            <option value="feminino">Feminino</option>
            <option value="nf">Não informado</option>
        </select>
    </div>
</form>