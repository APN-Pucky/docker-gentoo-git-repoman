name  = apnpucky/gentoo
build:
	docker build -t $(name) .
push: build
	docker push $(name)
