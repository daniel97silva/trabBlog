<?php require_once('config.php') ?>
<?php require_once( ROOT_PATH . '/includes/public_functions.php') ?>
<?php require_once( ROOT_PATH . '/includes/registration_login.php') ?>
<?php $posts = getPublishedPosts(); ?>
<!doctype html>

<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="">
      <meta name="author" content="">
      <title>ProgramerBlog</title>

      <link href="https://getbootstrap.com/docs/4.1/dist/css/bootstrap.min.css" rel="stylesheet">
      <link href="https://getbootstrap.com/docs/4.1/examples/carousel/carousel.css" rel="stylesheet">
  
   </head>
   <body>
      <header>
         <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
            <a class="navbar-brand" href="#">ProgramerBlog</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
               <ul class="navbar-nav mr-auto">
                  <li class="nav-item">
                     <a class="nav-link" href="register.php">Junte-se a nos...<span class="sr-only">(current)</span></a>
                  </li>
               </ul>
               <div>
                  <a class="btn btn-outline-secondary" type="button" href="login.php">Entrar</a>
               </div>
            </div>
         </nav>
      </header>

    <main role="main">

      <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
        </ol>

        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="first-slide" src="static/images/tela.jpg" alt="First slide">
            <div class="container">
              <div class="carousel-caption text-left">
                <h1>Nosso Conceito</h1>
                <p>ProgramerBlog  - pagina voltada para postagens, conhecimentos gerais e ajuda sobre tudo que envolve Programacao, desde de historias ate como comecar um trabalho nesse tema .. </p>
              </div>
            </div>
          </div>

          <div class="carousel-item">
            <img class="second-slide" src="static/images/tela01.jpg" alt="Second slide">
            <div class="container">
              <div class="carousel-caption">
               <p>Medir o progresso de um programador por linhas de codigo seria como medir o processo de montagem de uma aeronave pelo peso.<br>
                <span>~Bill Gates</span></p>
              </div>
            </div>
          </div>

        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </main>

      <div class="container marketing">
         </br>
         <div class="row">

            <?php foreach ($posts as $post): ?>

            <div class="col-lg-4">
               <p>
                  <strong class="d-inline-block mb-2 text-primary">
                  <?php if (isset($post['topic']['name'])): ?>
                  <a href="<?php echo BASE_URL . 'filtered_posts.php?topic=' . $post['topic']['id'] ?>" >
                  <?php echo $post['topic']['name'] ?>
                  </a>
                  <?php endif ?>
                  </strong>
               </p>
               <img class="rounded-circle" src="<?php echo BASE_URL . '/static/images/' . $post['image']; ?>" alt="Generic placeholder image" width="140" height="140">
               <h2><?php echo $post['title'] ?></h2>
               <div class="mb-1 text-muted"><span><?php echo date("F j, Y ", strtotime($post["created_at"])); ?></span></div>
               <p><button class="btn btn-light" href="single_post.php?post-slug=<?php echo $post['slug']; ?>" type="button" data-toggle="modal" data-target="#myModal<?php echo $post['slug']; ?>">Mais...</button></p>
            </div>
            <!-- INICIO MODAL -->
            <div class="modal fade" id="myModal<?php echo $post['slug']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
               <div class="modal-dialog" role="document">
                  <div class="modal-content">
                     <div class="modal-header">
                        <h4 class="modal-title text-center" id="myModalLabel"><?php echo $post['slug']; ?></h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                        </button>
                     </div>
                     <div class="modal-body">
                        <?php 
                           if (isset($_GET['post-slug'])) {
                             $post = getPost($_GET['post-slug']);
                           }
                           $topics = getAllTopics();
                           ?>
                           
                        <div class="container">
                           <div class="content" >
                              <div class="post-wrapper">
                                 <div class="full-post-div">
                                    <?php if ($post['published'] == false): ?>
                                    <h2 class="post-title">Não há postagens!</h2>
                                    <?php else: ?>
                                    <div class="post-body-div">
                                       <?php echo html_entity_decode($post['body']); ?>
                                    </div>
                                    <?php endif ?>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                     </div>
                  </div>
               </div>
            </div>
            <!-- FIM MODAL -->
            <?php endforeach ?>
         </div>
      </div>
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="https://getbootstrap.com/docs/4.1/assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
      <script src="https://getbootstrap.com/docs/4.1/assets/js/vendor/popper.min.js"></script>
      <script src="https://getbootstrap.com/docs/4.1/dist/js/bootstrap.min.js"></script>
      <script src="https://getbootstrap.com/docs/4.1/assets/js/vendor/holder.min.js"></script>
   </body>
</html>