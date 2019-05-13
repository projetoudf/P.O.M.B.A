<form action="lembretes/salvarLembrete.php">
    <h1 class="text-center">Adicionar um Resumo:</h1><br>
    <div class="container">
        <div class="form-group">
            <label>Título</label>
            <input type="text" id="conteudo" name="titulo" class="form-control limiteDeCaracteres" maxlength="50" required>
        </div>
        <div class="form-group">
            <label>Conteúdo</label>
            <textarea class="form-control limiteDeCaracteres" id="conteudo" name="conteudo" rows="5" cols="20" maxlength="200" required></textarea>
        </div>

        <div class="form-row col mt-5">
            <a role="button" class="btn btn-danger btn-lg" href="index.php">Cancelar</a>
            <button type="submit" class="btn btn-primary btn-lg ml-auto">Enviar</button>
        </div>
    </div>
</form>


