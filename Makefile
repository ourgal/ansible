FILES := $(basename $(wildcard playbooks/*.yml))
TARGETS := $(FILES:playbooks/%=%)

.PHONY: all ${TARGETS}
all: ${TARGETS}

build: nuc-windows

${TARGETS}:
	ansible-playbook playbooks/$@.yml
