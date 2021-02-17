<?php
get_header();
?>

<div id="home" class="content-area">
	<main id="main" class="site-main">

<<<<<<< HEAD
		<div class="container">
			<?= the_content(); ?>
		</div>
=======
  	<div class="container">
	  	<?php /*<h1><?= the_title(); ?></h1>
	  	<?php // the_content(); */?>

	  	<section id="cotxes">
	  		<h1>cotxes</h1>
	  	</section>

	  	<section id="motos">
	  		<h1>motos</h1>
	  	</section>

	  	<section id="bicicletes">
	  		<h1>bicicletes</h1>
	  	</section>

	  	<section id="industria">
	  		<h1>industria</h1>
	  	</section>

	  	<section id="contacte">
	  		<h1>contacte</h1>
	  	</section>

	  </div>
>>>>>>> 875a3b43b4998201d5285ce92c2a7b30b0dced48

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

							<div class="col-md-4 px-md-5 text-justify">
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

						<div class="text-center wow animate__animated animate__fadeIn" data-wow-delay="1s">
							<img class="pictograma img-fluid" src="<?= get_field('icona_moto')['url'] ?>">
						</div>
					</div>

					<div class="col-md-8 px-md-5 text-justify d-flex justify-content-center flex-column wow animate__animated animate__fadeIn" data-wow-delay="1.5s">
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

		<section id="bicicletes" class="container-fluid">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<h1 class="wow animate__animated animate__fadeIn mb-5" data-wow-delay=".5s"><?= get_field('titol_bicicleta'); ?></h1>
					</div>
				</div>
				<div class="row mt-4 <?= !have_rows('logos_bicicleta') ? 'mb-5 pb-5' : '' ?>">
					<div class="col-md-4 px-md-5 text-center d-flex justify-content-center align-items-center wow animate__animated animate__fadeIn" data-wow-delay="1s">

						<div class="text-center">
							<img class="pictograma img-fluid" src="<?= get_field('icona_bicicleta')['url'] ?>">
						</div>
					</div>

					<div class="col-md-8 px-md-5 text-justify d-flex justify-content-center flex-column  wow animate__animated animate__fadeIn" data-wow-delay="1.5s">
						<?= get_field('text_bicicleta'); ?>
					</div>
					<?php
					if( have_rows('logos_bicicleta') ):
						while( have_rows('logos_bicicleta') ) : the_row();

							if (get_sub_field('logo')) { ?>
								<div class="col-md-3 px-md-5 text-center my-5 mt-4 wow animate__animated animate__fadeIn" data-wow-delay="2s">
									<img class="pictograma-logo img-fluid" src="<?= get_sub_field('logo')['url'] ?>">
								</div>
							<?php } 

						endwhile;
					endif;?>
				</div>
			</div>
		</section>

		<section id="industria" class="dark-bg container-fluid">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<h1 class="wow animate__animated animate__fadeIn mb-5" data-wow-delay=".5s"><?= get_field('titol_industria'); ?></h1>
					</div>
				</div>
				<div class="row mt-4 pb-5">
					<div class="col-md-4 px-md-5 text-center d-flex justify-content-center align-items-center">

						<div class="text-center wow animate__animated animate__fadeIn" data-wow-delay="1s">
							<img class="pictograma img-fluid" src="<?= get_field('icona_industria')['url'] ?>">
						</div>
					</div>

					<div class="col-md-8 px-md-5 text-justify d-flex justify-content-center flex-column wow animate__animated animate__fadeIn" data-wow-delay="1.5s">
						<?= get_field('text_industria'); ?>
					</div>
					<?php
					if( have_rows('logos_industria') ):
						while( have_rows('logos_industria') ) : the_row();

							if (get_sub_field('logo')) { ?>
								<div class="col-md-3 px-md-5 text-center my-5 mt-4 wow animate__animated animate__fadeIn" data-wow-delay="2s">
									<img class="pictograma-logo img-fluid" src="<?= get_sub_field('logo')['url'] ?>">
								</div>
							<?php } 

						endwhile;
					endif;?>
				</div>
			</div>
		</section>


	</main><!-- .site-main -->
</div><!-- .content-area -->

<?php
get_footer();
