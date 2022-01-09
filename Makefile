.PHONY: create-keypair

PWD = $(shell pwd)
ACCTPATH = $(PWD)/account

create-keypair:
	@echo "Creating an rsa 256 key pair"
	openssl genrsa -out $(ACCTPATH)/rsa_private_$(ENV).pem 2048
	openssl rsa -in $(ACCTPATH)/rsa_private_$(ENV).pem -pubout -out $(ACCTPATH)/rsa_public_$(ENV).pem