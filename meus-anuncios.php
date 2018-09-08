<?php require 'pages/header.php' ?>

<?php
	// Verificando se o usuário esta logado
	if (empty($_SESSION['cLogin'])) {
		?>
			<!-- redirecionamento com Javascript -->
			<script type="text/javascript">window.location.href="login.php"; </script>
		<?php
		exit;
	}
?>
	<div class="container">
		<h1>Meus Anúcios</h1>

		<a href="add-anuncio.php" class="btn btn-default">Adicionar Anúcio</a>

		<table class="table table-striped">
			<thead>
				<tr>
					<th>Fotos</th>
					<th>Título</th>
					<th>Valor</th>
					<th>Ações</th>
				</tr>
			</thead>
			<?php
				require 'classes/anuncios.class.php';
				$a = new Anuncios();
				$anuncios = $a->getMeusAnuncios();

			foreach($anuncios as $anuncio):
			?>
				<tr>
					<td>
						<?php if(!empty($anuncio['url'])): ?>
							<img src="assets/image/anuncios/<?php echo $anuncio['url']; ?>" border="0" height="50" />
						<?php else: ?>
							<img src="assets/image/default.png" border="0" height="50" />
						<?php endif; ?>
					</td>
					<td><?php echo $anuncio['titulo']; ?></td>
					<td>R$ <?php echo number_format($anuncio['valor'], 2); ?></td>
					<td>
						<a href="editar-anuncio.php?id=<?php echo $anuncio['id']; ?>" class="btn btn-warning">Editar</a>
						<a href="excluir-anuncio.php?id=<?php echo $anuncio['id']; ?>" class="btn btn-danger">Excluir</a>
					</td>
				</tr>
			<?php endforeach; ?>
		</table>
	</div>
<?php require 'pages/footer.php' ?>