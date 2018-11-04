<?php  include('../config.php'); ?>
	<?php include(ROOT_PATH . '/admin/includes/admin_functions.php'); ?>
	<?php include(ROOT_PATH . '/admin/includes/head_section.php'); ?>
	<title>Blog | Painel de Controle</title>
	</head>
<body>
	<div class="header">
		<div class="logo">
			<a href="<?php echo BASE_URL .'admin/dashboard.php' ?>">
				<h1>ProgramerBlog - <span><?php echo $_SESSION['user']['username'] ?></span> &nbsp; &nbsp; </h1>
			</a>
		</div>
		<?php if (isset($_SESSION['user'])): ?>
			<div class="user-info">
				<span><?php echo $_SESSION['user']['username'] ?></span> &nbsp; &nbsp; 
				<a href="<?php echo BASE_URL . '/logout.php'; ?>" class="logout-btn">Sair</a>
			</div>
		<?php endif ?>
	</div>

<?php
if ($_SESSION['user']['role'] == "Admin") {
		

	echo '<div class="container dashboard" align="center">';
		echo '<h1>Bem-Vindo</h1>';
		echo '<div class="stats">';
			echo '<a href="users.php" class="first">';
				echo '<span>Administrar Usuarios</span>';
			echo '</a>';
			echo '<a href="posts.php">';
				echo '<span>Publicar/Avaliar Artigos</span>';
			echo '</a>';
		echo '</div>';
				


	} elseif ($_SESSION['user']['role'] == "Author") {
		
	echo '<div class="container dashboard"align="center">';
		echo '<h1>Seja Bem-Vindo!!</h1>';
		
		echo '<div class="stats">';
			echo '<a href="posts.php">';
				echo '<span>Publicar Artigo</span>';
			echo '</a>';
		echo '</div>';

	}
?>

	</div>
</body>
</html>
