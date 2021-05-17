<?php
get_header();
?>

<div id="home" class="content-area">
	<main id="main" class="site-main">

		<div class="container">
			<?= the_content(); ?>
		</div>

		<section id="cotxes" class="container-fluid">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<h1 class="wow animate__animated animate__fadeIn mb-5" data-wow-delay=".5s"><?= get_field('titol_cotxes'); ?></h1>
					</div>
				</div>
				<div class="row mt-4">
					<?php

					if( have_rows('cotxes') ):

						$i = 1;
						while( have_rows('cotxes') ) : the_row();

							?>

							<div class="col-md-4 px-md-5">
								<div class="wow animate__animated animate__fadeIn" data-wow-delay="<?= $i ?>s">
									<div class="text-center">
										<img class="pictograma img-fluid" src="<?= get_sub_field('icona')['url'] ?>">
									</div>
									<h2 class="my-3 text-center"><?= get_sub_field('titol'); ?></h2>
									<?= get_sub_field('text'); ?>
								</div>
								<?php if (get_sub_field('logo')) { ?>
									<div class="text-center my-5 mt-4 wow animate__animated animate__fadeIn" data-wow-delay="<?= $i + (count(get_field('cotxes')) / 2) ?>s">
										<img class="pictograma-logo img-fluid" src="<?= get_sub_field('logo')['url'] ?>">
									</div>
								<?php } ?>
							</div>

							<?php
							$i = $i + .5;
						endwhile;
					endif;
					?>
				</div>
			</div>
		</section>

		<section id="motos" class="dark-bg container-fluid">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<h1 class="wow animate__animated animate__fadeIn mb-5" data-wow-delay=".5s"><?= get_field('titol_moto'); ?></h1>
					</div>
				</div>
				<div class="row mt-4">
					<div class="col-md-4 px-md-5 text-center d-flex justify-content-center align-items-center">

						<img class="pictograma img-fluid wow animate__animated animate__fadeIn mb-5" data-wow-delay="1s" src="<?= get_field('icona_moto')['url'] ?>">

					</div>

					<div class="col-md-8 px-md-5 d-flex justify-content-center flex-column wow animate__animated animate__fadeIn" data-wow-delay="1.5s">
						<?= get_field('text_moto'); ?>
					</div>
					<?php
					if( have_rows('logos_moto') ):
						$i = 2;
						while( have_rows('logos_moto') ) : the_row();

							if (get_sub_field('logo')) { ?>
								<div class="col-md-3 px-md-5 text-center my-5 mt-4 wow animate__animated animate__fadeIn" data-wow-delay="<?= $i ?>s">
									<img class="pictograma-logo img-fluid" src="<?= get_sub_field('logo')['url'] ?>">
								</div>
							<?php } 
							$i = $i + .5;
						endwhile;
					endif;?>
				</div>
			</div>
		</section>

		<div id="bicicletes-industria" class="container-fluid">
			<div class="container">
				<div class="row">
					<section id="bicicletes" class="col-md-6">

						
						<h1 class="text-center wow animate__animated animate__fadeIn mb-5" data-wow-delay=".5s"><?= get_field('titol_bicicleta'); ?></h1>

						<div class="mt-4 row <?= !have_rows('logos_bicicleta') ? 'mb-5 pb-5' : '' ?>">
							<div class="w-100 pb-md-5 d-flex justify-content-center align-items-center wow animate__animated animate__fadeIn" data-wow-delay="1s">

								<img class="pictograma img-fluid wow animate__animated animate__fadeIn mb-5" data-wow-delay="1s" src="<?= get_field('icona_bicicleta')['url'] ?>">

							</div>

							<div class="px-md-5 d-flex justify-content-center flex-column  wow animate__animated animate__fadeIn px-5" data-wow-delay="1.5s">
								<?= get_field('text_bicicleta'); ?>
							</div>
							<?php
							if( have_rows('logos_bicicleta') ):
								?>
								<div class="d-flex justify-content-center w-100">
									<?php
									$i = 2;
									while( have_rows('logos_bicicleta') ) : the_row();

										if (get_sub_field('logo')) { ?>
											<div class="px-md-5 text-center my-5 mt-4 wow animate__animated animate__fadeIn" data-wow-delay="<?= $i ?>s">
												<img class="pictograma-logo img-fluid" src="<?= get_sub_field('logo')['url'] ?>">
											</div>
										<?php } 
										$i = $i + .5;
									endwhile;
									?>
								</div>
								<?php
							endif;?>
						</div>
					</section>

					<section id="industria" class="col-md-6">

						<h1 class="text-center wow animate__animated animate__fadeIn mb-5" data-wow-delay=".5s"><?= get_field('titol_industria'); ?></h1>

						<div class="mt-4 row <?= !have_rows('logos_industria') ? 'mb-5 pb-5' : '' ?>">
							<div class="w-100 pb-md-5 d-flex justify-content-center align-items-center wow animate__animated animate__fadeIn" data-wow-delay="1s">

								<img class="pictograma img-fluid wow animate__animated animate__fadeIn mb-5" data-wow-delay="1s" src="<?= get_field('icona_industria')['url'] ?>">

							</div>

							<div class="px-md-5 d-flex justify-content-center flex-column  wow animate__animated animate__fadeIn px-5" data-wow-delay="1.5s">
								<?= get_field('text_industria'); ?>
							</div>
							<?php
							if( have_rows('logos_recanvis') ):
								?>
								<div class="d-block d-md-flex justify-content-center w-100">
									<?php
									$i = 2;
									while( have_rows('logos_recanvis') ) : the_row();

										if (get_sub_field('logo')) { ?>
											<div class="px-md-5 text-center my-5 mt-4 wow animate__animated animate__fadeIn" data-wow-delay="<?= $i ?>s">
												<img class="pictograma-logo img-fluid" src="<?= get_sub_field('logo')['url'] ?>">
											</div>
										<?php } 
										$i = $i + .5;
									endwhile;
									?>
								</div>
								<?php
							endif;?>
						</div>
					</section>
				</div>
			</div>
		</div>

		
		<section id="contacte" class="container-fluid dark-bg pb-5">

			<h1 class="text-center wow animate__animated animate__fadeIn mb-5" data-wow-delay=".5s"><?= get_field('titol_contacte'); ?></h1>

			<div class="container">
				<div class="row">
					<div class="col-md-6 info pt-4">
						<?= get_field('dades_contacte'); ?>
					</div>
					<div class="col-md-6">
						<?= do_shortcode(get_field('formulari')); ?>
					</div>
				</div>
			</div>
		</section>

	</main><!-- .site-main -->
</div><!-- .content-area -->

<?php
get_footer();
