<?php
get_header();
?>

<div id="home" class="content-area">
	<main id="main" class="site-main">

		<div class="container">
			<?= the_content(); ?>
		</div>

		<section id="destacat1" class="destacat container-fluid">
			<div class="container">
				<div class="row">
					<div class="col-md-8 offset-md-2 text-center">
						<!--img class="pictograma img-fluid mb-3 wow animate__animated animate__fadeIn" src="<?= get_stylesheet_directory_uri() ?>/img/icons/circulo-plus.svg" width="30"-->
						<div class="wow animate__animated animate__fadeIn" data-wow-delay="1s"><?= get_field('introduccio_1'); ?></div>
					</div>
				</div>
			</div>
		</section>


		<section id="cotxes" class="container-fluid dark-bg">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1 class="wow animate__animated animate__fadeIn mb-5" data-wow-delay=".5s"><?= get_field('titol_cotxes'); ?></h1>
					</div>
					<div class="col-md-6">
						<h2 class="wow animate__animated animate__fadeIn mb-5" data-wow-delay=".5s"><?= get_field('subtitol_cotxes_1'); ?></h2>
						<div class="info-cotxes wow animate__animated animate__fadeIn" data-wow-delay="1s">
							<?= get_field('text_cotxes_1'); ?>
						</div>
					</div>
					<div class="col-md-6">
						<h2 class="wow animate__animated animate__fadeIn mb-5" data-wow-delay="1.5s"><?= get_field('subtitol_cotxes_2'); ?></h2>
						<div class="info-cotxes wow animate__animated animate__fadeIn" data-wow-delay="2s">
							<?= get_field('text_cotxes_2'); ?>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="imatge-destacada-section" style="background-image: url(<?= get_field('imatge_cotxes') ?>)">
			<!--img class="img-fluid" src="<?= get_field('imatge_cotxes') ?>" /-->
		</section>

		<section id="destacat2" class="destacat container-fluid">
			<div class="container">
				<div class="row">
					<div class="col-md-8 offset-md-2 text-center">
						<!--img class="pictograma img-fluid mb-3 wow animate__animated animate__fadeIn" src="<?= get_stylesheet_directory_uri() ?>/img/icons/circulo-plus.svg" width="30"-->
						<h3 class="wow animate__animated animate__fadeIn" data-wow-delay=".5s"><?= get_field('titol_introduccio_2'); ?></h3>
						<div class="wow animate__animated animate__fadeIn" data-wow-delay=".5s"><?= get_field('introduccio_2'); ?></div>
					</div>
				</div>
			</div>
		</section>


		<section id="motos" class="container-fluid dark-bg">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1 class="wow animate__animated animate__fadeIn mb-5" data-wow-delay=".5s"><?= get_field('titol_motos'); ?></h1>
					</div>
					<div class="col-md-5 pr-md-5 wow animate__animated animate__fadeIn" data-wow-delay=".5s">
						<h2 class="mb-4 pr-md-5"><?= get_field('subtitol_motos'); ?></h2>
						<div class="remark"></div>
					</div>
					<div class="col-md-7">
						<div class="info-motos wow animate__animated animate__fadeIn" data-wow-delay="1s">
							<?= get_field('text_motos'); ?>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="imatge-destacada-section" style="background-image: url(<?= get_field('imatge_motos') ?>)">
			<!--img class="img-fluid" src="<?= get_field('imatge_motos') ?>" /-->
		</section>
		<section id="motos-marques">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h3 class="mb-5 wow animate__animated animate__fadeIn"><?= get_field('titol_marques') ?></h3>
						<div class="marques d-md-flex justify-content-between align-items-center">
							<?php

							if( have_rows('marques_motos') ):

								$i = 1;
								while( have_rows('marques_motos') ) : the_row();

									?>

									<div class="wow animate__animated animate__fadeIn pictograma-logo" data-wow-delay="<?= $i ?>s">
										<img class="img-fluid" src="<?= get_sub_field('marca')['url'] ?>">
									</div>
									<?php
									$i = $i + .2;
								endwhile;
							endif;
							?>
						</div>
					</div>
				</div>
			</div>
		</section>




		<section id="bicicletes-industria" class="container-fluid dark-bg super-width">
			<div class="row" header-anchor="1" id="bicicletes">
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-7 offset-md-4">
							<h1 class="wow animate__animated animate__fadeIn mb-5" data-wow-delay=".5s"><?= get_field('titol_bicicletes'); ?></h1>
							<div class="wow animate__animated animate__fadeIn mb-5" data-wow-delay="1s">
								<?= get_field('text_bicicletes'); ?>
							</div>
							<div class="remark wow animate__animated animate__fadeIn " data-wow-delay="1s"></div>
						</div>
					</div>
				</div>
				<div class="col-md-6 bg-img" style="background-image: url('<?= get_field('imatge_bicicletes') ?>');">
					
				</div>
			</div>
			<div class="row" header-anchor="1" id="industria">
				<div class="col-md-6 bg-img order-2 order-md-1" style="background-image: url('<?= get_field('imatge_industria') ?>');">	
				</div>
				<div class="col-md-6 order-1 order-md-2">
					<div class="row">
						<div class="col-md-7 offset-md-1">
							<h1 class="wow animate__animated animate__fadeIn mb-5" data-wow-delay=".5s"><?= get_field('titol_industria'); ?></h1>
							<div class="wow animate__animated animate__fadeIn mb-5" data-wow-delay="1s">
								<?= get_field('text_industria'); ?>
							</div>
							<div class="wow animate__animated animate__fadeIn remark" data-wow-delay="1s"></div>
						</div>
					</div>
				</div>
			</div>
		</section>


		<section id="testimonials" class="container-fluid destacat">
			<div class="container">
				<div class="row">
					<div class="col-12">
						
						<div class="testimonial-slick wow animate__animated animate__fadeIn"  data-wow-delay=".5s" >
							<?php

							if( have_rows('testimonials') ):

								while( have_rows('testimonials') ) : the_row();

									?>

									<div class="testimonial-text">
										<div class="mb-5" ><?= get_sub_field('testimonial_text'); ?></div>
										<label class="my-5 text-center" ><?= the_sub_field('nom_testimonial') ?></label>
									</div>

									<?php
								endwhile;
							endif;



							?>
						</div>



					</div>

				</div>
			</div>
		</section>


		<section id="contacte" class="container-fluid dark-bg pb-5">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h1 class="wow animate__animated animate__fadeIn mb-5" data-wow-delay=".5s"><?= get_field('titol_contacte'); ?></h1>
					</div>

					<div class="col-md-6 info pt-4 wow animate__animated animate__fadeIn" data-wow-delay="1s">
						<?= get_field('dades_contacte'); ?>
					</div>
					<div class="col-md-6 wow animate__animated animate__fadeIn" data-wow-delay="1.5s">
						<?= do_shortcode(get_field('formulari')); ?>
					</div>
				</div>
			</div>
		</section>

	</main><!-- .site-main -->
</div><!-- .content-area -->

<?php
get_footer();
