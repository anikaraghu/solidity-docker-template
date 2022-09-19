run_compose = docker-compose -f docker-compose.yml run --rm $(2) main  $(1)
run_yarn_command = $(call run_compose, yarn $(1), $(2))

up:
	docker-compose up -d

down:
	docker-compose down -t 0

install:
	docker-compose run main yarn install
	$(call run_yarn_command, install)

.PHONY: test
test:
	$(call run_yarn_command, test)

test-report-gas:
	$(call run_yarn_command, test, -e REPORT_GAS=true)

compile:
	$(call run_yarn_command, compile)

typechain:
	$(call run_yarn_command, typechain)

deploy:
	$(call run_yarn_command, deploy)

clean:
	$(call run_yarn_command, clean)

coverage:
	$(call run_yarn_command, coverage)

prettier:
	$(call run_yarn_command, prettier)