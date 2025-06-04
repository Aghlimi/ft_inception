<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', getenv( 'WORDPRESS_DB_NAME' ) );

/** Database username */
define( 'DB_USER', getenv( 'WORDPRESS_DB_USER' ) );

/** Database password */
define( 'DB_PASSWORD', getenv( 'WORDPRESS_DB_PASSWORD' ) );

/** Database hostname */
define( 'DB_HOST', getenv( 'WORDPRESS_DB_HOST' ) );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

// redis config
define("WP_CACHE", true);
define("REDIS_HOST", getenv('REDIS_HOST'));
define("REDIS_PORT", getenv('REDIS_PORT'));
define("REDIS_MAXTTL", getenv('REDIS_MAXTTL'));

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
define( 'AUTH_KEY',         '|-B}6uC5Fc6e&>T6uY:7v1I9 z3k1B*:%sl(b.:Jd0jc9)9XJe#It^FnDbr}iZ$/' );
define( 'SECURE_AUTH_KEY',  '3>(dDJ=%6|bH`sC3iaLzf>dQOtjH3TK[wixHFQ!W30z?HVPfpW|R~*;]Oqsg0e-V' );
define( 'LOGGED_IN_KEY',    'in:XnD$f~kp*l@4lM!~4d9S8|NwzP+J@d[-e3FbZ@ +8_;sWkx3$~NcL5gy&UJXQ' );
define( 'NONCE_KEY',        'ikTJK.iF2r5r[d&IlGDci_qR ^<a~5Sm~o3rCss(S?GW6Jvar4XPBr;H,)Y1v29D' );
define( 'AUTH_SALT',        'oP7CT)f>lQDtvnvc5D#8;H891yt70^{dv/gp[^q@?!XxOExyFd wyx*S}[C_G75z' );
define( 'SECURE_AUTH_SALT', '%*Q<HQT*5Tv=I[B;YnOqIGtbTV!h;;7H[x$KGSfaR&pYCGsC ayOEW&7ZK,~kzPn' );
define( 'LOGGED_IN_SALT',   'n@j5!tVj8;+i3+<`gn!j$3r1M7UJrTA8W<gheMa`Ql!L>!vSTCo?.<>f}H +~K3}' );
define( 'NONCE_SALT',       '4=:xfrz7|B`XkOT.^kXpdKD6+>!zywpB]=):1 K<HZPw/[;h~pWJ}5g xmJV@073' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 *
 * At the installation time, database tables are created with the specified prefix.
 * Changing this value after WordPress is installed will make your site think
 * it has not been installed.
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/#table-prefix
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
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
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