<form action="contato/salvarLembrete.php">
    <h1 class="text-center">Adicionar um Lembrete:</h1><br>
    <div class="container">
        <div class="form-group">
            <label>Título</label>
            <input type="text" name="nome" class="form-control" required>
        </div>

        <div class="form-group">
            <label>Conteúdo</label>
            <textarea class="form-control" id="mensagem" name="mensagem" rows="5" cols="20" maxlength="1000" required></textarea>
        </div>

        <div class="form-row col mt-5">
            <a role="button" class="btn btn-danger btn-lg" href="index.php">Cancelar</a>
            <button type="submit" class="btn btn-primary btn-lg ml-auto">Enviar</button>
        </div>
    </div>
</form>