PREFIX := narumi

DOCKERFILES := $(sort $(wildcard */Dockerfile))
DIRS := $(patsubst %/,%,$(dir $(DOCKERFILES)))
BUILD_TARGETS := $(addprefix build-, $(DIRS))
PUSH_TARGETS := $(addprefix push-, $(DIRS))

build-%: %/Dockerfile
	docker build --tag $(PREFIX)/pytorch:$* --file $< $(dir $<)

build: $(BUILD_TARGETS)

push-%: %/Dockerfile
	docker push $(PREFIX)/pytorch:$*

push: $(PUSH_TARGETS)

all: build push
