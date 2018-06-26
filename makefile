.PHONY: build clean

image ?= haoliang/yii

build:
	@ docker build -t ${image} .

clean:
	@ if docker ps -a --format "{{.Image}}" | grep -F "${image}" &>/dev/null; then \
		>&2 echo "you need remove container of image ${image}"; false; \
	fi
	@ docker rmi ${image}
