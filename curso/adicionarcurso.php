<h2 class="text-center">Cadastrar Novo Curso</h2>
<h4 class="text-center">Escolha o Curso, o Semestre e a quantidade de Disciplinas:</h4>
<form action="index.php?page=informardisciplinas">
<input type="hidden" name="page" value="informardisciplinas">

  <div class="form-row col">
    <div class="form-group col-md">
      <label for="curso">Curso</label>
      <input type="text" class="form-control" id="curso" name="curso"
        placeholder="O curso será um select com todos os cursos">
    </div>
  </div>
  <div class="form-row col">
    <div class="form-group col-sm-6">
      <label for="semestre">Semestre</label>
      <input type="text" class="form-control" id="semestre" name="semestre" placeholder="Select de 1 a 20">
    </div>
    <div class="form-group col-sm-6">
      <label for="qtdDisciplinas">Quantidade de Disciplinas:</label>
      <input type="number" class="form-control" id="qtdDisciplinas" name="qtdDisciplinas" placeholder="Select de 1 a 20">
    </div>
  </div>
  <div class="form-row col mt-5">
    <a role="button" class="btn btn-danger btn-lg" href="index.php">Cancelar</a>
    <button type="submit" class="btn btn-primary btn-lg ml-auto">Enviar</button>
  </div>
</form>