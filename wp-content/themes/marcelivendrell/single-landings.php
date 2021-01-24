<?php
get_header();



?>

<div id="landings" class="content-area">
  <main id="main" class="site-main">

    <div class="header-landing container-fluid" style="background-image: url('<?= the_post_thumbnail_url(); ?>');">
      <div class="row h-100 d-flex align-items-end">
        <div class="header-title col-md-6 p-5 b-taronja">
          <div class="bottom-underline m-auto">
            <?= the_title( '<h1 class="entry-title text-white pb-5">', '</h1>' ); ?>
          </div>
        </div>
      </div>
    </div>

    <div class="container py-5 my-md-5 main-content">
      <div class="row">
        <div class="col-md-5 mb-5">
          <h2 class="text-taronja mb-5"><?= get_field('title_content'); ?></h2>
          <?php the_content(); ?>
          <a class="btn btn-fabre-tall btn-dark"><?= __('MÁS INFORMACIÓN', 'dada'); ?></a>
        </div>
        <div class="col-md-7">
          <div class="primary-slick">
            <?php
            $images = get_field('slide');

              $size = 'large'; // (thumbnail, medium, large, full or custom size)
              if( $images ): ?>
                <?php foreach( $images as $image ): ?>
                  <img src="<?php echo esc_url($image['sizes'][$size]); ?>" alt="<?php echo esc_attr($image['alt']); ?>" />
                <?php endforeach; ?>
              <?php endif; ?>
            </div>
          </div>
        </div>
      </div>



    </main><!-- .site-main -->
    
    <?php get_template_part( 'template-parts/footer/landing-pre-footer' ); ?>

    <?php get_template_part( 'template-parts/footer/landing-pre-footer', 'form' ); ?>

  </div><!-- .content-area -->



  <?php
  get_footer();