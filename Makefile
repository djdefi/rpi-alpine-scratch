IMAGE := djdefi/rpi-alpine

test:
	true

image:
	sudo ./mkimage-alpine.sh
	docker build -t $(IMAGE) .

push-image:
	docker push $(IMAGE)


.PHONY: image push-image test
