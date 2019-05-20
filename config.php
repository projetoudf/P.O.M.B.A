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
		case 'listardisciplinas':
			include("curso/listardisciplinas.php");
			break;
		case 'detalhedisciplina':
			include("curso/detalheDisciplina.php");
			break;
		//resumo		
		case 'adicionarresumo':
			include("resumo/adicionarResumo.php");
			break;
		case 'excluirresumo':
			include("resumo/excluirResumo.php");
			break;
		case 'salvarresumo':
			include("resumo/salvarResumo.php");
			break;
		case 'editarresumo':
			include("resumo/editarResumo.php");
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
		//FALTAS		
		case 'faltas':
			include("faltas/listarFalta.php");
			break;
		case 'adicionarfalta':
			include("faltas/adicionarFalta.php");
			break;
		case 'excluirfalta':
			include("faltas/excluirFalta.php");
			break;
		
		default:
			include("dashboard.php");
	}

?>