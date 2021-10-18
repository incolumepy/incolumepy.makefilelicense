.DEFAULT_GOAL := help

license-gnu-agpl-v3:
	@echo GNU Affero General Public License v3.0

license-gnu-gpl-v3:
	@echo GNU General Public License v3.0

license-gnu-lgpl-v3:
	@echo GNU Lesser General Public License v3.0

license-mozilla-v2:
	@echo Mozilla Public License 2.0

license-apache-v2:
	@echo Apache License 2.0

license-mit:
	@echo MIT License

license-boost-v1:
	@echo Boost Software License 1.0


unlicense:
	@echo The Unlicense

.PHONY: help

help:
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)