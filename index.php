<?php
    session_start();
    ini_set('default_charset', 'UTF-8');
    require "conn.php";
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>P.O.M.B.A</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
        integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="style4.css">

    <!-- Font Awesome JS -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">



</head>

<body>

    <div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <a href="index.php"><h3>P.O.M.B.A</h3></a>
                <a href="index.php"><strong><img src="Pombo.jpg" alt="PB" height="35px" style="border-radius: 50%;"></strong></a>
            </div>

            <ul class="list-unstyled components">
            <?php if (isset($_SESSION['email'])){ ?>
                <li>
                    <a href="index.php?page=adicionarcurso" >
                        <i class="fas fa-plus-circle"></i>
                        Adicionar Curso
                    </a>
                </li>
            <?php } ?>

                <li>
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <i class="fas fa-home"></i>
                        Cursos
                    </a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                        <li>
                            <a href="#">Disciplina 1</a>
                            <!-- inserir um submenu com o semestre, junto de um for para cada disciplina e semestre, ou um select para alternar o semestre -->
                        </li>
                        <li>
                            <a href="#">Disciplina 2</a>
                        </li>
                        <li>
                            <a href="#">Disciplina 3</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-briefcase"></i>
                        Grade Horária
                    </a>
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <i class="fas fa-copy"></i>
                        Dados
                    </a>
                    <ul class="collapse list-unstyled" id="pageSubmenu">
                        <li>
                            <a href="#">Notas</a>
                        </li>
                        <li>
                            <a href="#">Faltas</a>
                        </li>
                        <li>
                            <a href="index.php?page=lembretes">Lembretes</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-image"></i>
                        Meu Perfil
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-question"></i>
                        FAQ
                    </a>
                </li>
                <li>
                    <a href="index.php?page=contato">
                        <i class="fas fa-paper-plane"></i>
                        Contato
                    </a>
                </li>
            </ul>
            <span style="color: black;  font-size: 12px; text-indent: 15px; margin-left: 5px;">
            <?php
            $sql = mysqli_query($conn,"SELECT frase FROM frasesmotivacionais ORDER BY RAND() LIMIT 1");
	    $res = $sql->fetch_assoc();
            print "\"". $res['frases']. "\"";
            ?>
            </span>

        </nav>

        <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="btn btn-info">
                        <i class="fas fa-align-left"></i>
                        <span>Alternar Menu</span>
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <?php
					        if (!isset($_SESSION['email'])){ ?>
                            <li class="nav-item">
                                <a role="button" class="btn btn-success my-2" href="index.php?page=cadastro">Cadastro</a>
                            </li>
                            <li class="nav-item">
                                <a role="button" class="btn btn-info my-2 mx-2" data-toggle="modal" data-target="#login">Login</a>
                            </li>
                        <?php } else { ?>
                            <li class="nav-item">
                                <a class="nav-link" href="index.php?page=mensagens">Mensagens <i class="far fa-comment-dots"></i></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link">Olá <?php echo $_SESSION['nome']; ?>!</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="logout.php"><i class="fas fa-sign-out-alt"></i> Sair</a>
                            </li>
                            <?php } ?>
                        </ul>
                    </div>
                </div>
            </nav>

            <div class="row">
                <div class="col-md-12">
                    <?php include("config.php"); ?>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="loginTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Login</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="login.php" method="POST">
                        <div class="form-group">
                            <label for="email_login">E-mail</label>
                            <input type="text" class="form-control" name="email_login" id="email_login"
                                placeholder="Email" required>
                            
                        </div>
                        <div class="form-group">
                            <label for="senha_login">Senha</label>
                            <input type="password" class="form-control" id="senha_login" name="senha_login"
                                placeholder=" Sua senha" required>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger mr-auto" data-toggle="modal" data-target="#esquecisenha" disabled>Esqueci minha senha</button>
                            <button type="submit" class="btn btn-primary">Entrar</button>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>

    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
        integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous">
    </script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
        integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous">
    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>

    <script>
        $(document).ready(function(){
        var maxChars = $(".limiteDeCaracteres");
            var max_length = maxChars.attr('maxlength');
            if (max_length > 0) {
                maxChars.bind('keyup', function(e){
                    length = new Number(maxChars.val().length);
                    counter = max_length-length;
                });
            }
        });
    </script>
</body>

</html>
