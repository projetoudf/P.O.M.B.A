<form action="contato/enviarMensagem.php">
<h1 class="text-center">Entre em contato:</h1><br>
<div class="container">
<div class="row">
        <div class="form-group col-6">
            <label>Nome</label>
            <input type="text" name="nome" class="form-control" required>
        </div>
        <div class="form-group col-6">
            <label>Email</label>
            <input type="email" name="email" class="form-control" required>
        </div>
    </div>
    <div class="row">
        <div class="form-group col-6">
            <label>Telefone</label>
            <input type="text" name="telefone" class="form-control" >
        </div>
        <div class="form-group col-6">
            <label>Celular</label>
            <input type="text" name="celular" class="form-control">
        </div>
    </div>
    <div class="form-group">
        <textarea class="form-control" id="mensagem" name="mensagem" rows="5" cols="20" maxlength="1000"
            placeholder="Envie uma mensagem!"></textarea>
    </div>

    <div class="form-group">
        <button type="submit" class="btn btn-primary mr-auto">Enviar</button>
    </div>
</div>
</form>