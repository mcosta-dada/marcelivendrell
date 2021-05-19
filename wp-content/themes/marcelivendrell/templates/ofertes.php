<?php /* Template Name: Ofertes */ 

get_header();
?>

<div id="ofertes" class="content-area">
	<main id="main" class="site-main">

		<section>
			<div class="container pt-5">
				<h1 class="wow animate__animated animate__fadeIn mb-5 text-center" ><?= get_the_title() ?></h1>

				<div class="content mb-5 wow animate__animated animate__fadeIn" data-wow-delay=".5s">
					<?= the_content(); ?>
				</div>


				<?php

				$args = array(
					'post_type' => 'ofertes',
					'post_per_page' => -1,
					'post_status' => 'publish'
				);

				$query = new WP_Query( $args );

				?>

				<div class="row pt-5">

					<?php
					$i = 1;
					while ( $query->have_posts() ) : $query->the_post();

						?>

						<div class="col-md-4 d-flex flex-column producte text-center wow animate__animated animate__fadeIn mb-5" data-wow-delay="<?= $i ?>s">
							<a href="<?= wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), "full" )[0]; ?>" target="_blank"><div class="oferta-img" style="background-image: url(<?= wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), "large" )[0]; ?>)" ></div></a>
							<h2><?= get_the_title() ?></h2>
							<?= the_content() ?>
							<h3><?= the_field('preu') ?></h3>
						</div>

						<?php
					$i = $i + 0.5;
					endwhile;


					wp_reset_query();
					?>

				</div>
			</div>
		</section>


		<section id="contacte" class="container-fluid dark-bg mt-5">

			<div class="pb-5">
				<h1 class="text-center wow animate__animated animate__fadeIn mb-5" data-wow-delay=".5s">CONTACTE</h1>

				<div class="container">
					<div class="row">
						<div class="col-md-6 info pt-4 wow animate__animated animate__fadeIn" data-wow-delay="1s">
							<?= get_field('dades_contacte'); ?>
						</div>
						<div class="col-md-6 wow animate__animated animate__fadeIn" data-wow-delay="1.5s">
							<?= do_shortcode(get_field('formulari')); ?>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
</div>

<?php
get_footer();
