IMAGE := djdefi/rpi-alpine

test:
	true

image:
	sudo ./mkimage-alpine.sh -s
	docker build -t $(IMAGE) .

push-image:
	docker push $(IMAGE)


.PHONY: image push-image test
