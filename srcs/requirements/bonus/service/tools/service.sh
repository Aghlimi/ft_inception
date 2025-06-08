#!/bin/bash

set -e

mkdir -p /backup

cat <<EOF > /backup.sh
#!/bin/bash
mysqldump -h ${WORDPRESS_DB_HOST} -u ${WORDPRESS_DB_USER} -p${WORDPRESS_DB_PASSWORD} ${WORDPRESS_DB_NAME} > /backup/wordpress_$(date +%Y%m%d).sql
EOF

chmod +x /backup.sh

/backup.sh

echo "0 0 */30 * * /backup.sh" > /etc/cron.d/wordpress_backup

service cron stop

service cron start
