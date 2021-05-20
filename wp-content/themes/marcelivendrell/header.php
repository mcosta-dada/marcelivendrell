<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="profile" href="https://gmpg.org/xfn/11" />

	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Lato:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

	<?php wp_head(); ?>

</head>

<body <?php body_class(); ?>>
	<?php wp_body_open(); ?>
	<div id="page" class="site">

		<header id="top-header">
			<?php get_template_part( 'template-parts/header/header' ); ?>

			<div class="slider position-relative">
				<div class="primary-slick">
					<?php

					if( have_rows('slide') ):

					    // Loop through rows.
						while( have_rows('slide') ) : the_row();

							?>

							<div class="slide-image d-flex justify-content-center align-items-center item" style="background-image: url(<?= get_sub_field('imatge_background') ?>)">
								<div class="content-slide text-center mt-5 px-5">
									<!--img class="logo-slide img-fluid animate__animated animate__fadeInLeft animate__delay-1s"  data-animation="animated flash" src="<?= get_sub_field('imatge') ?>" /-->
									<img class="logo-slide img-fluid invisible"  src="<?= get_sub_field('imatge') ?>" />
									<h2 class="text-slide text-white my-5" ><?= the_sub_field('text') ?></h2>
								</div>
							</div>

							<?php

					    // End loop.
						endwhile;

					// No value.
					else :
					    // Do something...
					endif;



					?>
				</div>
				<img class="logo-slide-fixed img-fluid" src="<?= get_stylesheet_directory_uri() ?>/img/header/marcelli_logoblanc.png" style="">

				
			</div>
			<!--div id="slide-arrows">
				<img class="prev" src="<?= get_stylesheet_directory_uri() ?>/img/icons/left-arrow.svg"/>
				<img class="next" src="<?= get_stylesheet_directory_uri() ?>/img/icons/right-arrow.svg"/>
			</div-->
		</div>
	</header><!-- .site-branding-container -->

	<div id="content" class="site-content">