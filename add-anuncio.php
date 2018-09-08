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

require 'classes/anuncios.class.php';
$a = new Anuncios();
if (isset($_POST['titulo']) && !empty($_POST['titulo'])) {
	$titulo    = addslashes($_POST['titulo']);
	$categoria = addslashes($_POST['categoria']);
	$valor     = addslashes($_POST['valor']);
	$descricao = addslashes($_POST['descricao']);
	$estado    = addslashes($_POST['estado']);

	$a->addAnuncio($titulo, $categoria, $valor, $descricao, $estado);

	?>
	<div class="alert alert-success">
		Produto Adicionado com Sucesso!
	</div>
	<?php
}
?>
<div class="container">
		<h1>Meus Anúcios - Adicionar Anúcios</h1>
							<!-- método que faz o formulário receber imagens -->
		<form method="POST" enctype="multipart/form-data">
			<div class="form-group">
				<label for="categoria">Categorias:</label>
				<select name="categoria" id="categoria" class="form-control">
					<?php
					require 'classes/categoarias.class.php';
						$c = new Categorias();
						$cats = $c->getLista();
						foreach($cats as $cat):
					?>
						<option value="<?php echo $cat['id']; ?>"><?php echo utf8_encode($cat['nome']); ?></option>
					<?php
				         endforeach;
				     ?>
				</select>
			</div>
			<div class="form-group">
				<label for="titulo">Título:</label>
				<input type="text" name="titulo" class="form-control">
			</div>
			<div class="form-group">
				<label for="valor">Valor:</label>
				<input type="text" name="valor" class="form-control">
			</div>
			<div class="form-group">
				<label for="descricao">Descrição:</label>
				<textarea name="descricao" class="form-control"></textarea>
			</div>
			<div class="form-group">
				<label for="estado">Estado de Conservação:</label>
				<select name="estado" id="estado" class="form-control">
					<option value="0">Ruim</option>
					<option value="1">Bom</option>
					<option value="2">Ótimo</option>
				</select>
			</div>
			<input type="submit" value="Adicionar" class="btn btn-default">
		</form>
</div>
<?php require 'pages/footer.php' ?>