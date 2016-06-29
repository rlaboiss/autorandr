BIN_DIR = /usr/bin
PM_UTILS_DIR = /usr/lib/pm-utils/sleep.d/
BASH_COMPLETION_DIR = /etc/bash_completion.d

.PHONY: install
install:
	install --mode=755 autorandr $(BIN_DIR)
	install --mode=755 auto-disper $(BIN_DIR)
	install --mode=755 pm-utils/40autorandr $(PM_UTILS_DIR)
	install --mode=644 bash_completion/autorandr $(BASH_COMPLETION_DIR)

.PHONY: uninstall
uninstall:
	rm -f $(BIN_DIR)/autorandr $(BIN_DIR)/auto-disper	\
	      $(PM_UTILS_DIR)/pm-utils/40autorandr		\
	      $(BASH_COMPLETION_DIR)/bash_completion/autorandr
