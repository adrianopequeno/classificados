<?php require 'config.php'; ?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Classificados</title>
	<!-- Css e Bootstrap -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/style.css">
	<!-- JavaScript -->
	<script type="text/javascript" src="assets/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/script.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a href="./" class="navbar-brand" >Classificados</a>
			</div>
			<ul class="nav navbar-nav navbar-right">
				<!-- verificação de login do usuário -->
				<?php if(isset($_SESSION['cLogin']) && !empty($_SESSION['cLogin'])):
					require "classes/usuarios.class.php";
				?>
					<li><a>Olá <?= Usuarios::getNome($_SESSION['cLogin']); ?></a></li>
					<li><a href="meus-anuncios.php">Meus Anúcios</a></li>
					<li><a href="sair.php">Sair</a></li>
				<?php else: ?>
					<li><a href="cadastre-se.php">Cadastre-se</a></li>
					<li><a href="login.php">Login</a></li>
				<?php endif; ?>
			</ul>
		</div>
	</nav>