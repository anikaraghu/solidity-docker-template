run_compose = docker-compose -f docker-compose.yml run --rm $(2) main  $(1)
run_yarn_command = $(call run_compose, yarn $(1), $(2))

up:
	docker-compose up -d

down:
	docker-compose down -t 0

node:
	$(call run_compose, npx hardhat node)

install:
	$(call run_yarn_command, install)

clean:
	$(call run_yarn_command, clean)

typechain:
	$(call run_yarn_command, typechain)

compile:
	$(call run_yarn_command, compile)

deploy:
	$(call run_yarn_command, deploy)

.PHONY: test
test:
	$(call run_yarn_command, test)
