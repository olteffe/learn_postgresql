help:
	@echo "run        - Run database container for local development."
	@echo ""
	@echo "stop       - Stop and remove database container (data is not removed)."
	@echo ""
	@echo "psql       - run a postgresql shell against a RUNNING container."
	@echo "             The following arguments can be passed to this target:"
	@echo "             -it <postgres_m> name of postgres container"
	@echo "             -U <postgres> username"
	@echo "             -d <demo> name of database to connect to"
	@echo "             type <exit> to quit"
run:
	docker-compose up

stop:
	docker-compose down

psql:
	docker exec -it postgres_m psql -U postgres -d demo