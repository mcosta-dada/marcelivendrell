<?php
get_header();
?>

<div id="primary" class="content-area">
	<main id="main" class="site-main">
		<div class="container mb-5" style="margin-top: 100px">
			<?php


			while ( have_posts() ) :
				the_post();

				echo "<h1 class='mb-5'>". get_the_title() ."</h1>";
				the_content();

			endwhile; 
			?>
		</div>

	</main><!-- #main -->
</div><!-- #primary -->

<?php
get_footer();
