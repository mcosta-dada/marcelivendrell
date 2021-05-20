<?php

get_header();
?>

<div id="primary" class="content-area">
	<main id="main" class="site-main">
		<div class="container mb-5" style="margin-top: 100px">

			<div class="error-404 not-found">
				<div class="page-content" style="height: calc(100vh - 300px)">
					<h1 class="page-title"><?php _e( '¡Ups! No s\'ha trobat la pàgina.', 'marceli' ); ?></h1>
					<p>Torna a la <a href="/" style="color: black">home</a></p>
				</div><!-- .page-content -->
			</div><!-- .error-404 -->
		</div>

	</main><!-- #main -->
</div><!-- #primary -->

<?php
get_footer();
