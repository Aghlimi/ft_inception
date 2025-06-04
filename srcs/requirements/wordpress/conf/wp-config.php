<?php
define( 'DB_NAME', "wordpress" );
define( 'DB_USER', "aghlimi" );
define( 'DB_PASSWORD', "1234" );
define( 'DB_HOST', "mariadb:3306" );
define( 'DB_CHARSET', 'utf8mb4');
define( 'DB_COLLATE', '' );
define('FS_METHOD', 'direct');
define( 'WP_CACHE', true );
define('WP_REDIS_HOST', getenv('REDIS_HOST'));  
define('WP_REDIS_PORT', getenv('REDIS_PORT'));         
define('WP_REDIS_MAXTTL', getenv('REDIS_MAXTTL'));      
define( 'AUTH_KEY',         'WakTH$DOlT7TKFOWM4!dbW*B6z;kLB1Ku|x<q=Nj-] ,}dj9RXB!5KP@t;A:BCvV' );
define( 'SECURE_AUTH_KEY',  'XwncaZnukR6 +r5eCvkcmfc:$ie:*g.uJmusS`nr]$j*RnJ{k@MPk*${>~P`mMhn' );
define( 'LOGGED_IN_KEY',    '6iysy.Zb EoNx7:f`.6v*Yx,EixBox:v/4i+YT]/S/Yqi`(1%HJI*Um|!6vciqLQ' );
define( 'NONCE_KEY',        '/=wJOtD2N*0OA B3![x[1OwM$g>5zK`PSA?VR1v1)R.ZN;EF]RlNPc%}8-cBuy7c' );
define( 'AUTH_SALT',        'E(71~q2)b6Q3Dg|,q8hUDTv|XbcG76bX&a?1hRvEU?Gt B;4<}GH/#fKlV<G?zuE' );
define( 'SECURE_AUTH_SALT', 'RH{ s!-K(.PIzj?nS?ir=^YZBjU*cx7U2TPXrXC3i:]>K0yfIkd4?=@/Yd:<u]Tw' );
define( 'LOGGED_IN_SALT',   'Q:vwQW^>w<PNPsM^n9(R7Wpy8Ua4zN|kumjmh d>3#fWf=iT(|CJ:qSP4SM>xr &' );
define( 'NONCE_SALT',       'ULK|D_>Z]V6x# ]defQb0w:E555KxK]jh2C?q>i tO$?Qo|kudl[ GjsZAHlzY8P' );
$table_prefix = 'wp_';
define( 'WP_DEBUG', false );
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}
require_once ABSPATH . 'wp-settings.php';