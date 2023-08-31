.PHONY : start deploy

port = 3000
start:
	hugo -D -b "http://127.0.0.1:$(port)/"
	cd app && spin build && spin up --listen 127.0.0.1:$(port)

deploy:
	hugo -b "/"
	cd app && spin build && spin deploy
