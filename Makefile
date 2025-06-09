NAME=inception
COMPOSE=docker-compose -f srcs/docker-compose.yml --env-file srcs/.env

# volumes paths
db_data=/home/aghlimi/data/db-data
wp_data=/home/aghlimi/data/wp-content
backup_data=/home/aghlimi/data/backup

all: up

up:
	mkdir -p $(db_data) $(wp_data) $(backup_data)
	echo "🚀 Starting containers..."
	$(COMPOSE) up -d --build

down:
	$(COMPOSE) down

fclean:
	rm -rf $(db_data) $(wp_data) $(backup_data)
	$(COMPOSE) down --volumes --rmi all

re: fclean all
