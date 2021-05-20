<section id="contacte" class="container-fluid dark-bg pb-5">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h1 class="wow animate__animated animate__fadeIn mb-5" data-wow-delay=".5s"><?= get_field('titol_contacte', 2); ?></h1>
			</div>

			<div class="col-md-5 info pt-4 wow animate__animated animate__fadeIn" data-wow-delay="1s">
				<?= get_field('dades_contacte', 2); ?>
			</div>
			<div class="col-md-7 wow animate__animated animate__fadeIn" data-wow-delay="1.5s">
				<?= do_shortcode(get_field('formulari', 2)); ?>
			</div>
		</div>
	</div>
</section>