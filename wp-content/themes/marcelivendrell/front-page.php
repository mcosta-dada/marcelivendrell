<?php
get_header();
?>

<div id="home" class="content-area">
  <main id="main" class="site-main">

  	<div class="container">
	  	<h1><?= the_title(); ?></h1>
	  	<?= the_content(); ?>
	  </div>

  </main><!-- .site-main -->
</div><!-- .content-area -->

<?php
get_footer();
