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
            <select class="custom-select" name="qtdDisciplinas" id="qtdDisciplinas" required>
            <option value="">Escolha..</option>
              <option value="sim">Sim</option>
              <option value="nao">Não</option>
            </select> 
          </div>
        </div>
        <div class="form-row col">
          <div class="form-group col-sm-4">
            <label for="dia">Dia</label>
            <select class="custom-select" name="dia" id="dia" required>
            <option value="">Escolha..</option>
              <option value="segunda">Segunda</option>
              <option value="terca">Terça</option>
              <option value="quarta">Quarta</option>
              <option value="quinta">Quinta</option>
              <option value="sexta">Sexta</option>
              <option value="sabado">Sábado</option>
            </select>          
          </div>
          <div class="form-group col-sm-4">
            <label for="horario">Horário</label>
            <select class="custom-select" name="horario" id="horario" required>
            <option value="">Escolha..</option>
              <option value="primeiro">Primeiro</option>
              <option value="segundo">Segundo</option>
              <option value="integral">Primeiro e Segundo</option>
            </select>          
          </div>
          <div class="form-group col-sm-4">
            <label for="qtdDisciplinas">Turno</label>
            <select class="custom-select" name="horario" id="horario" required>
            <option value="">Escolha..</option>
              <option value="matutino">Matutino</option>
              <option value="vespertino">Vespertino</option>
              <option value="noturno">Noturno</option>
            </select>
          </div>
        </div>
      </div>
    <?php } ?>

  <div class="form-row col mt-5">

    <a role="button" class="btn btn-danger btn-lg" href="index.php">Cancelar</a>
    <button type="submit" class="btn btn-primary btn-lg ml-auto">Enviar</button>
  </div>
</form>