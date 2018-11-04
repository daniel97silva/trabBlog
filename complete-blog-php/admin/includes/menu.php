<div class="menu">
	<div class="card">
		<div class="card-header">
			<h2>Ações</h2>
		</div>
		<!--<div class="card-content">
			<a href="<?php echo BASE_URL . 'admin/create_post.php' ?>">CRIAR ARTIGO</a>
			<a href="<?php echo BASE_URL . 'admin/posts.php' ?>">GERENCIAR ARTIGO(s)</a>
			<a href="<?php echo BASE_URL . 'admin/users.php' ?>">GERENCIAR USUARIO(s)</a>
			<a href="<?php echo BASE_URL . 'admin/topics.php' ?>">GERENCIAR CAREGORIA(s)</a>
		</div>-->

<?php

if ($_SESSION['user']['role'] == "Admin") {
		
			echo '<div class="card-content">';
			echo '<a href="../admin/create_post.php">Criar Artigo</a>';
			echo '<a href="../admin/posts.php">Gerenciar Artigos</a>';
			echo '<a href="../admin/users.php">Gerenciar Usuarios</a>';
			echo '<a href="../admin/topics.php">Criar/Editar Topicos</a>';
			echo '</div>';

	} elseif ($_SESSION['user']['role'] == "Author") {
		
			echo '<div class="card-content">';
			echo '<a href="../admin/create_post.php">CRIAR ARTIGO</a>';
			echo '</div>';
	}

?>
	</div>
</div>