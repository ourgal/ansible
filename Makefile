FILES := $(basename $(wildcard playbooks/*.yml))
TARGETS := $(FILES:playbooks/%=%)

.PHONY: all ${TARGETS}
all: ${TARGETS}

build: void_chroot_debian

${TARGETS}:
	ansible-playbook playbooks/$@.yml