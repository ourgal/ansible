FILES := $(basename $(wildcard playbooks/*.yml))
TARGETS := $(FILES:playbooks/%=%)

.PHONY: all ${TARGETS}
all: ${TARGETS}

${TARGETS}:
	ansible-playbook playbooks/$@.yml