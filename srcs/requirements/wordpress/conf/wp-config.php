<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'ajemraou' );

/** Database password */
define( 'DB_PASSWORD', 'ajemraou' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '3+kjC6k9j5*!Jm&Ou[_]|x~CDoQN(ninKCq|O=H8y])[^;Z4e&{2>DxfnF$=Hqyt' );
define( 'SECURE_AUTH_KEY',  'DCc(1~*BcO0Y((Fh&0;AdN+QewEh(?G)[E*~Vh<93)4ficGI1G->|;S&5Cko:7rK' );
define( 'LOGGED_IN_KEY',    'Pcpb;2QpscL%}o0fH,|_V_4M@`_aFc3^_5:+^Zo7,y,M}+uA9`y@S;UI]d;U>gyN' );
define( 'NONCE_KEY',        'qjzn_aP4u5Yz#a>Q8(h]u?yJArt_|e}V3krN79/~Kmo9a4]E{qT <Tk_`!GxWg65' );
define( 'AUTH_SALT',        'dmV{E=q5zL~UH1fKeZ|t[3/2)bm{M6P5sc6Y%4DV ?dfyU=2b9-yR3wflSY}JjBX' );
define( 'SECURE_AUTH_SALT', 'Prk,]Y9D:VF:uJVZ190pQ>M/:41OI{/-`k0/,?@gM?z|8wA^Ip]pZbQHKbZr]olR' );
define( 'LOGGED_IN_SALT',   'CA<!>fwIFM?4/Y}f3xJl0|63_OS7c:vFzsyX%N?**dhk/^ kK*nHH<Y1F Z6QEsD' );
define( 'NONCE_SALT',       '>wn:I-mdm/6vBPJW)Q2wO6EINb]*T[Hmk~ M6*):#_|l[2m@zh~ZTj5YA`!CbyHW' );

/**#@-*/

/**
 * WordPress database table prefix.
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

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';