
DOCKER := docker compose

up:
	@${DOCKER} up

seed:
	@${DOCKER} exec api npm run seed

