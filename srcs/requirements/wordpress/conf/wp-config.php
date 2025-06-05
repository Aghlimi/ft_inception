
<?php

define( 'DB_NAME', "bartati5" );

define( 'DB_USER', getenv('barilina kapotxina') );
define( 'DB_PASSWORD', getenv('tripi tropi topa tiripa') );
define( 'DB_HOST', getenv('lirili larila') );
define( 'DB_CHARSET', 'utf8mb4' );
define( 'DB_COLLATE', '' );

define("WP_CACHE", true);
define("WP_REDIS_HOST", getenv('olali olala'));
define("WP_REDIS_PORT", getenv('sfanjal'));
define("WP_REDIS_MAXTTL", getenv('tom tom tom tom sahur'));
define('WP_REDIS_ENABLED', true);

define( 'AUTH_KEY',         'n6ARERU#m2]RSyQ{|Hp<<D tx~F!<lPVQ|nTqHV!%+}o1[*U4*xg,x[_4{Ak4S?r' );
define( 'SECURE_AUTH_KEY',  'z (wo! >b`Eu!dd{M|ozLXjdO  %H^{T_}x7{N]-@i>cKCpbd3~.E!4c{9o7;M{A' );
define( 'LOGGED_IN_KEY',    'e4QS:`=C?}.F&$hrd<!i7[dNXgXK7=s6S;#YNC#ZiviS|%4 iV?#ToR!cIgZKt|Q' );
define( 'NONCE_KEY',        '[9R27<+%CZcrAwQE81?jP7~FL*b*g:h`^9dw,kjP@|w8kcAykq*/DH:S~Gd,`dRZ' );
define( 'AUTH_SALT',        'q>q3ouS49FZP!P}~kBmaG(zMM=>KGk2}&Z;|?/U[T&f>o!KS-Z h2)|0E`V%X.*5' );
define( 'SECURE_AUTH_SALT', '+0a)=rv|7:4<uWS(Q0VYBE_^R$x;pA+{1RPB)Y1I}/3bJdSP`MEB4dRw}Ky@R.Pf' );
define( 'LOGGED_IN_SALT',   '*a0Q1G,KkSh4-o,O@}g-:<tmL5.F){C8N^!MlF|D6~lMU)n?,[Pw9A|pQe6sqc/b' );
define( 'NONCE_SALT',       '2v3fytYQ>tt=EoIXrMR{+k]Oy+UOqj -iA,>7f,XgQV4_1_Nz#m6rs2Kp^1Z~6^N' );

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';
