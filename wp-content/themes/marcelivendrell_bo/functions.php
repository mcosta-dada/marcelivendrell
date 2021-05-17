<?php

if ( ! function_exists( 'theme_setup' ) ) :


	function theme_setup() {

		add_theme_support( 'title-tag' );
		add_theme_support( 'custom-logo' );
		add_theme_support( 'custom-background' );

		register_nav_menus(
			array(
				'header-menu' => __( 'Menú Principal', 'marcelivendrell' ),
				'header-menu-mobile' => __( 'Menú Principal Mòbil', 'marcelivendrell' ),
			)
		);

	}

endif;

add_action( 'after_setup_theme', 'theme_setup' );




 //Registrar estilos
function tema_enqueue_styles() {
    //Style.css
	wp_enqueue_style( 'tema-style', get_stylesheet_directory_uri() . '/style.css', array(), time());
	wp_enqueue_style( 'vendor-style', get_stylesheet_directory_uri() . '/css/vendor.css', array(), time());
	wp_enqueue_style( 'base-style', get_stylesheet_directory_uri() . '/css/main.css', array(), time());

	wp_enqueue_script( 'base-js', get_template_directory_uri() . '/js/all.js', array( ), time() );


}
add_action( 'wp_enqueue_scripts', 'tema_enqueue_styles');


function admin_bar()
{
if (is_user_logged_in()) {
   add_filter('show_admin_bar', '__return_true', 1000);
   }
}
add_action('init', 'admin_bar');


function add_file_types_to_uploads($file_types){
	$new_filetypes = array();
	$new_filetypes['svg'] = 'image/svg+xml';
	$file_types = array_merge($file_types, $new_filetypes );
	return $file_types;
}
add_filter('upload_mimes', 'add_file_types_to_uploads');

add_theme_support( 'post-thumbnails' );


function change_menu($items){

global $post;

if(!is_front_page()){

  foreach($items as $item){


  	if ($post->post_name != strtolower($item->title))
    	$item->url = $post_name . get_bloginfo("url") . "/" .  $item->url;


  }

}

  return $items;

}

add_filter('wp_nav_menu_objects', 'change_menu');