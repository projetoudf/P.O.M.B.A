<h2 class="text-center">Cadastrar Novo Curso</h2>
<h4 class="text-center">Escolha o Curso, o Semestre e a quantidade de Disciplinas:</h4>
<form action="index.php?page=informardisciplinas">
<input type="hidden" name="page" value="informardisciplinas">

  <div class="form-row col">
    <div class="form-group col-md">
      <label for="curso">Curso</label>
        <select class="custom-select" name="curso" id="curso" required>
          <?php
          option_curso();?>
        </select>
    </div>
  </div>
  <div class="form-row col">
    <div class="form-group col-sm-6">
      <label for="semestre">Semestre</label>
      <select class="custom-select" name="semestre" id="semestre" required>
        <?php 
        for ($i=01; $i <= 20; $i++) { 
          echo "<option value='".$i."' >" . $i . "</option>";
        } ?>
      </select>
    </div>
    <div class="form-group col-sm-6">
      <label for="qtdDisciplinas">Quantidade de Disciplinas:</label>
      <select class="custom-select" name="qtdDisciplinas" id="qtdDisciplinas" required>
        <?php 
        for ($i=01; $i <= 20; $i++) { 
          echo "<option value='".$i."' >" . $i . "</option>";
        } ?>
      </select>    
    </div>
  </div>
  <div class="form-row col mt-5">
    <a role="button" class="btn btn-danger btn-lg" href="index.php">Cancelar</a>
    <button type="submit" class="btn btn-primary btn-lg ml-auto">Enviar</button>
  </div>
</form>