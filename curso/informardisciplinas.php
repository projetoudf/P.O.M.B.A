<?php
  $curso = $_REQUEST['curso'];
  $semestre = $_REQUEST['semestre'];
  $qtdDisciplinas = $_REQUEST['qtdDisciplinas'];



?>
<h2 class="text-center">Informe a(s) Disciplina(s)</h2>
<h4 class="text-center">Preencha os formulários para cada disciplina:</h4>
<form>
  <?php
    for ($i = 1; $i <= $qtdDisciplinas; $i++){ ?>
      <div class="border border-blue rounded py-2 my-2">
        <div class="form-row col">
          <div class="form-group col-sm-6">
            <label for="semestre">Disciplina <?php echo $i; ?></label>
            <input type="email" class="form-control" id="semestre" name="semestre" placeholder="Select com as disciplinas">
          </div>
          <div class="form-group col-sm-6">
            <label for="qtdDisciplinas">Cai na PRI?</label>
            <input type="email" class="form-control" id="qtdDisciplinas" name="qtdDisciplinas"
              placeholder="Select com sim ou nao">
          </div>
        </div>
        <div class="form-row col">
          <div class="form-group col-sm-4">
            <label for="semestre">Dia</label>
            <input type="email" class="form-control" id="semestre" name="semestre" placeholder="Select de seg a sab">
          </div>
          <div class="form-group col-sm-4">
            <label for="qtdDisciplinas">Horário</label>
            <input type="email" class="form-control" id="qtdDisciplinas" name="qtdDisciplinas"
              placeholder="select com 1, 2 ou 1 e 2">
          </div>
          <div class="form-group col-sm-4">
            <label for="qtdDisciplinas">Turno</label>
            <input type="email" class="form-control" id="qtdDisciplinas" name="qtdDisciplinas"
              placeholder="select com mat, vesp, not">
          </div>
        </div>
      </div>
    <?php } ?>

  <div class="form-row col mt-5">

    <a role="button" class="btn btn-danger btn-lg" href="index.php">Cancelar</a>
    <button type="submit" class="btn btn-primary btn-lg ml-auto">Enviar</button>
  </div>
</form>