# **************************************************************************** #
#                              Inception Makefile                              #
# **************************************************************************** #

NAME=inception
COMPOSE=docker-compose -f srcs/docker-compose.yml --env-file srcs/.env

# volumes
db_data=/home/aa/data/db-data
wp_data=/home/aa/data/wp-content
backup_data=/home/aa/data/backup

# Default target
all: up

# Start containers
up:
	mkdir -p $(db_data) $(wp_data) $(backup_data)
	echo "🚀 Starting containers..."
	$(COMPOSE) up -d --build

# Stop containers
down:
	echo "🛑 Stopping containers..."
	$(COMPOSE) down

# Rebuild all (without cache)
re: fclean all
re2:clean all
# Clean only containers (keep volumes)
clean:
	echo "🧼 Cleaning containers..."
	$(COMPOSE) down

# Clean everything: containers, volumes, networks
fclean:
	rm -rf $(wp_data) $(backup_data) $(db_data)
	echo "🔥 Full clean: containers, volumes, networks..."
	$(COMPOSE) down --rmi local
	docker builder prune -f

# Show container status
ps:
	$(COMPOSE) ps

# Show logs
logs:
	$(COMPOSE) logs -f

# Help
help:
	echo ""
	echo "🛠️  Available commands:"
	echo "  make            - Build and start the project"
	echo "  make up         - Same as above"
	echo "  make down       - Stop containers"
	echo "  make clean      - Stop containers only"
	echo "  make fclean     - Full cleanup (containers, volumes)"
	echo "  make re         - Rebuild all"
	echo "  make ps         - Show container status"
	echo "  make logs       - Show real-time logs"
	echo ""

.PHONY: all up down clean fclean re ps logs help
