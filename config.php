<?php
	ini_set('default_charset', 'UTF-8');

	require_once "conn.php";

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
		case 'mensagens':
			include("contato/listarMensagens.php");
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
		//lembrete		
		case 'lembretes':
			include("lembretes/listarLembretes.php");
			break;
		case 'adicionarLembrete':
			include("lembretes/adicionarLembrete.php");
			break;
		case 'editarLembrete':
			include("lembretes/editarLembrete.php");
			break;
		
		default:
			include("dashboard.php");
	}

?>