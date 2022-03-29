.PHONY: build run clean docker-run docker-down

clean:
	rm -rf target/ log/ data/

docker-up:
	sudo docker-compose up -d

docker-down:
	sudo docker-compose down --remove-orphans -v

docker-build:
	sudo docker-compose down --remove-orphans -v
	sudo docker-compose up -d

#deploy-hml-matrix:
#	git tag -f build-matrix
#	git push --force origin build-matrix
