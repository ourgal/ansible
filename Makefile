FILES := $(basename $(wildcard playbooks/*.yml))
TARGETS := $(FILES:playbooks/%=%)

.PHONY: all ${TARGETS}
all: ${TARGETS}

build: void_puppy

${TARGETS}:
	ansible-playbook playbooks/$@.yml