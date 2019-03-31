<?php
	//conexão com o banco de dados
	$host = "localhost";
	$user = "root";
	$pass = "root";
	$db   = "pomba";

	$conn = new mysqli($host,$user,$pass,$db) or die($conn->error);

	//inclusão de páginas
	switch (@$_REQUEST["page"]) {
		//cadastro		
		case 'cadastro':
			include("cadastro.php");
			break;
		case 'edi-advogado':
			include("advogado/editar-advogado.php");
			break;
		case 'lis-advogado':
			include("advogado/listar-advogado.php");
			break;
		case 'sal-advogado':
			include("advogado/salvar-advogado.php");
			break;
		//curso		
		case 'adicionarcurso':
			include("curso/adicionarcurso.php");
			break;
		case 'informardisciplinas':
			include("curso/informardisciplinas.php");
			break;
		case 'lis-cliente':
			include("cliente/listar-cliente.php");
			break;
		case 'sal-cliente':
			include("cliente/salvar-cliente.php");
			break;
		//processo		
		case 'cad-processo':
			include("processo/cadastrar-processo.php");
			break;
		case 'edi-processo':
			include("processo/editar-processo.php");
			break;
		case 'lis-processo':
			include("processo/listar-processo.php");
			break;
		case 'sal-processo':
			include("processo/salvar-processo.php");
			break;
		
		default:
			include("dashboard.php");
	}

?>