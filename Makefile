# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ajemraou <ajemraou@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/24 17:11:32 by ajemraou          #+#    #+#              #
#    Updated: 2023/04/02 02:31:48 by ajemraou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CONTAINER_IDS:= $(shell docker ps -qa)
IMAGE_IDS:= $(shell docker images -q)
VOLUME_IDS:= $(shell docker volume ls -q)
NETWORK_IDS:= $(shell docker network ls --filter "type=custom" -q)

build:
	@docker-compose -f ./srcs/docker-compose.yml build

run:
ifeq ($(wildcar /home/ajemraou/data/mysql),)
	@mkdir -p /home/ajemraou/data/mysql
endif
ifeq ($(wildcar /home/ajemraou/data/wordpress),)
	@mkdir -p /home/ajemraou/data/wordpress
endif
	@docker-compose -f ./srcs/docker-compose.yml up -d
	
down:
	@docker-compose -f ./srcs/docker-compose.yml down -v 2> /dev/null

stop:
ifeq ($(CONTAINER_IDS),)
	@echo "No container IDs specified. Nothing to stop."
else
	@docker stop $(CONTAINER_IDS)
endif

clean: stop
ifeq ($(strip $(CONTAINER_IDS)),)
	@echo "No container IDs specified. Nothing to remove."
else
	@docker rm $(CONTAINER_IDS)
endif

ifeq ($(strip $(IMAGE_IDS)),)
	@echo "No image IDs specified. Nothing to remove."
else
	@docker rmi -f $(IMAGE_IDS)
endif

ifeq ($(strip $(VOLUME_IDS)),)
	@echo "No volume IDs specified. Nothing to remove."
else
	@docker volume rm $(VOLUME_IDS)
endif

ifeq ($(strip $(NETWORK_IDS)),)
	@echo "No network IDs specified. Nothing to remove."
else
	@docker network rm $(NETWORK_IDS)
endif

fclean: clean
ifneq ($(wildcard /home/ajemraou/data/wordpress),)
	@rm -rf /home/ajemraou/data/wordpress
endif

ifneq ($(wildcard /home/ajemraou/data/mysql),)
	@rm -rf /home/ajemraou/data/mysql
endif

re:  fclean build run
