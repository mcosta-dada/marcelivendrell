<div class="container-fluid p-0 position-fixed" style="z-index: 999">

			<?php if ( has_nav_menu( 'header-menu' ) ) : ?>
				<nav class="navbar navbar-expand-lg">
					<img src="<?= get_stylesheet_directory_uri() ?>/img/header/logo_mini.svg" class="img-fluid logo-nav" />
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-center py-4" id="navbarNavAltMarkup">

						<?php

						add_filter( 'nav_menu_link_attributes', function($atts) {
							$atts['class'] = "nav-item nav-link";
							return $atts;
						}, 100, 1 );

						$menuParameters = array(
							'theme_location'    => 'header-menu',
							'container'         => false,
							'echo'              => false,
							'items_wrap'        => '%3$s',
							'depth'             => 0,
						);
						echo strip_tags(wp_nav_menu( $menuParameters ), '<a>' );
						?>
					</div>
				</nav><!-- #site-navigation -->
			<?php endif; ?>
		</div>