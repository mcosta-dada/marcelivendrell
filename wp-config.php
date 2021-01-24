<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'marcelivendrell' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', '127.0.0.1' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'baSJ}~o(c{/qPQ|V1hq)zkk>Hs~4R (.=L5!k_`ugwGt&}+F-aN{qsu>I5*F!sJW' );
define( 'SECURE_AUTH_KEY',  'VEq/,$&qr4^7Z?2=[tz)B%RS.CdDJ!lXh `*k5Ynh:kW;~g7@^4oc./7_;G3%azk' );
define( 'LOGGED_IN_KEY',    '&6_4[>s!*Yj%d@OpD]Iq06]lhQ5]p7G3AN<yqSCE]U(@s@0l;VB7Qy&bX`gg[/ M' );
define( 'NONCE_KEY',        'VhA`#ADbC7^C8FKccK^K|Y+ }=[/PJZ`:pw`P,)zb,cPtXlfU$KxeOh&GYy_-^$J' );
define( 'AUTH_SALT',        '5``c+goH,N02PefA$_cA!c)oBo)!/6X20v9c1*%@c%suOv7moHRR;.,yD+B23Im5' );
define( 'SECURE_AUTH_SALT', '>z} S:h/_d,FTq70Lqxv&X3+eK9 #_S4_EFy<NE,_]pT<4=[gj9O+sNS%LIEaB]H' );
define( 'LOGGED_IN_SALT',   '>*s^Nm@Y(/_V-2SuSeZ%0D1M}g:llv&WhUa&5]qGcU=]IiUya#J#t7>+}.zR.O!e' );
define( 'NONCE_SALT',       '#jAU~uw$/+mjSeW%:f8nAx})rS$<km8h~Po`%5g?M+vNyYodIiNIN%k?m%yq{Ms0' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
