PREFIX := narumi

DOCKERFILES := $(sort $(wildcard */Dockerfile))
DIRS := $(patsubst %/,%,$(dir $(DOCKERFILES)))
BUILD_TARGETS := $(addprefix build-, $(DIRS))
PUSH_TARGETS := $(addprefix push-, $(DIRS))

build-%: %/Dockerfile
	time docker build --tag $(PREFIX)/$* --file $< $(dir $<)

build: $(BUILD_TARGETS)

push-%: %/Dockerfile
	time docker push $(PREFIX)/$*

push: $(PUSH_TARGETS)

all: build push