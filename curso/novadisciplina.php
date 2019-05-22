<?php
    if (session_status() == PHP_SESSION_NONE) {
        session_start();
    }    
    require_once $_SERVER['DOCUMENT_ROOT'] . "/conn.php";
    $curso = $_REQUEST['idCurso'];
    $semestre = $_REQUEST['idSemestre'];
    $qtdDisciplinas = "1";
    if(isset($_REQUEST['disciplina1'])){
        $id = $_SESSION['id'];
        $insert = null;
    for ($i = 1; $i <= $qtdDisciplinas; $i++) {
        $iddisciplina = $_REQUEST['disciplina' . $i];
        $dia = $_REQUEST['dia' . $i]; 
        $turno = $_REQUEST['turno' . $i]; 
        $horario = $_REQUEST['horario' . $i];
        $nomeprofessor = $_REQUEST['nomeprofessor' . $i];
        $emailprofessor = $_REQUEST['emailprofessor' . $i];
        $insert .= "INSERT INTO disciplinaHistorico (diaSemana, horario, turno, nomeProfessor, emailProfessor, idDisciplina ) VALUES ('".$dia."', '".$horario."', '".$turno."', '".$nomeprofessor."', '".$emailprofessor."', '". $iddisciplina."'); ";
        $insert .= "INSERT INTO usuarioCurso (idSemestre, idAluno, idCurso, idDiscCursada) VALUES ('$semestre', '$id', '$curso', (select MAX(idDiscCursada) FROM disciplinaHistorico));";
    }
    $conn->multi_query($insert);

    // success 
    if($insert){
        echo '<script type="application/javascript">alert("Salvo com sucesso!"); window.history.go(-2);</script> ';

    }else{
        echo '<script type="application/javascript">alert("Houve um problema. Tente novamente...".mysql_error());window.history.go(-1); </script>';
    }
    }
?>
<h2 class="text-center">Informe a(s) Disciplina(s)</h2>
<h4 class="text-center">Preencha os formulários para cada disciplina:</h4>
<form action="curso/novadisciplina.php">
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


    <a role="button" class="btn btn-danger btn-lg" href="javascript:window.history.go(-1);">Cancelar</a>
    <button type="submit" class="btn btn-primary btn-lg ml-auto">Enviar</button>
  </div>
</form>