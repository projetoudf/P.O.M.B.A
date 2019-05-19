<?php
  $curso = $_REQUEST['curso'];
  $semestre = $_REQUEST['semestre'];
  $qtdDisciplinas = $_REQUEST['qtdDisciplinas'];
?>
<h2 class="text-center">Informe a(s) Disciplina(s)</h2>
<h4 class="text-center">Preencha os formulários para cada disciplina:</h4>
<form action="curso/salvar.php">
  <?php
    for ($i = 1; $i <= $qtdDisciplinas; $i++){ ?>
      <div class="border border-blue rounded py-2 my-2">
        <div class="form-row col">
          <div class="form-group col-sm-6">
            <label for="disciplina<?php echo $i; ?>">Disciplina <?php echo $i; ?></label>
            <select class="custom-select" name="disciplina<?php echo $i; ?>" id="disciplina<?php echo $i; ?>" required>
              <?php
              option_disciplina();?>
            </select>
          </div>
          <div class="form-group col-sm-6">
            <label for="horario<?php echo $i; ?>">Horário</label>
            <select class="custom-select" name="horario<?php echo $i; ?>" id="horario<?php echo $i; ?>" required>
              <option value="">Escolha..</option>
                <option value="primeiro">Primeiro</option>
                <option value="segundo">Segundo</option>
                <option value="integral">Primeiro e Segundo</option>
              </select>  
          </div>
        </div>
        <div class="form-row col">
          <div class="form-group col-sm-6">
            <label for="dia <?php echo $i; ?>">Dia</label>
            <select class="custom-select" name="dia<?php echo $i; ?>" id="dia<?php echo $i; ?>" required>
            <option value="">Escolha..</option>
              <option value="segunda">Segunda</option>
              <option value="terca">Terça</option>
              <option value="quarta">Quarta</option>
              <option value="quinta">Quinta</option>
              <option value="sexta">Sexta</option>
              <option value="sabado">Sábado</option>
            </select>          
          </div>
          <div class="form-group col-sm-6">
            <label for="turno<?php echo $i; ?>">Turno</label>
            <select class="custom-select" name="turno<?php echo $i; ?>" id="turno<?php echo $i; ?>" required>
            <option value="">Escolha..</option>
              <option value="matutino">Matutino</option>
              <option value="vespertino">Vespertino</option>
              <option value="noturno">Noturno</option>
            </select>
          </div>
        </div>
        <div class="form-row col">
          <div class="form-group col-sm-6">
            <label for="nomeprofessor<?php echo $i; ?>">Professor</label>
            <input type="text" class="form-control" id="nomeprofessor<?php echo $i; ?>" name="nomeprofessor<?php echo $i; ?>" placeholder="Nome do Professor">
          </div>
          <div class="form-group col-sm-6">
            <label for="emailprofessor<?php echo $i; ?>">Email do Professor</label>
            <input type="text" class="form-control" id="emailprofessor<?php echo $i; ?>" name="emailprofessor<?php echo $i; ?>" placeholder="Email do Professor">
          </div>
        </div>
      </div>
    <?php } ?>

  <div class="form-row col mt-5">
    <input type="hidden" name="curso" value="<?php echo $curso; ?>">
    <input type="hidden" name="semestre" value="<?php echo $semestre; ?>">
    <input type="hidden" name="qtdDisciplinas" value="<?php echo $qtdDisciplinas; ?>">


    <a role="button" class="btn btn-danger btn-lg" href="index.php">Cancelar</a>
    <button type="submit" class="btn btn-primary btn-lg ml-auto">Enviar</button>
  </div>
</form>