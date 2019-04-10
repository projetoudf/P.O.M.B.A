<?php
	ini_set('default_charset', 'UTF-8');

	require "conn.php";

	//inclusão de páginas
	switch (@$_REQUEST["page"]) {
		//cadastro		
		case 'cadastro':
			include("cadastro.php");
			break;
		case 'login':
			include("login.php");
			break;
		case 'contato':
			include("contato/contato.php");
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