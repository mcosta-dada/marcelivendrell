<?php /* Template Name: Ofertes */ 

get_header();
?>

<div id="ofertes" class="content-area">
	<main id="main" class="site-main">

		<section class="container">
			<h1 class="wow animate__animated animate__fadeIn mb-5" data-wow-delay=".5s">Ofertes</h1>

			<?= the_content(); ?>

			<?php

			$args = array(
				'post_type' => 'ofertes',
				'post_per_page' => -1,
				'post_status' => 'publish'
			);

			$query = new WP_Query( $args );

			?>

			<div clas="row">

				<?php

				while ( $query->have_posts() ) : $query->the_post();

					?>

					<div class="col-md-4">
						<
					</div>

					<?php

				endwhile;

				?>
			</div>
		</section>
	</main>
</div>

<?php
get_footer();
