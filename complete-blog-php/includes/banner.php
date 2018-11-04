<?php if (isset($_SESSION['user']['username'])) { ?>
	<div class="logged_in_info">
		<span>Bem-Vindo <?php echo $_SESSION['user']['username'] ?></span>
		|
		<span><a href="logout.php">sair</a></span>
	</div>
<?php }else{ ?>
	<div class="banner">
		<div class="welcome_msg">
			
			<p> 
			    Medir o progresso de um programador por linhas de código é como medir o processo de montagem de um avião pelo peso.<br>
				<span>~Bill Gates</span>
			</p>
			<a href="register.php" class="btn">Junte-se a nós!</a>
		</div>

		<div class="login_div">
			<form action="<?php echo BASE_URL . 'index.php'; ?>" method="post" >
				<h2>Login</h2>
				<div style="width: 60%; margin: 0px auto;">
					<?php include(ROOT_PATH . '/includes/errors.php') ?>
				</div>
				<input type="text" name="username" value="<?php echo $username; ?>" placeholder="Usuario">
				<input type="password" name="password"  placeholder="Senha"> 
				<button class="btn" type="submit" name="login_btn">Entrar</button>
			</form>
		</div>
	</div>
<?php } ?>
