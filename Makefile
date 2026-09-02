## -*- tab-width: 2 -*-
##
## Makefile for nomnichi articles
## 
.PHONY: new
new:
	@DATE=$$(date +%Y%m%d); \
	printf "Title: %s-" "$$DATE"; read TITLE; \
	SLUG=$$(echo "$$TITLE" | tr -s 'A-Z ' 'a-z-'); \
	FILE="content/articles/$$DATE-$$SLUG/index.md"; \
	hugo new "$$FILE"; \
	sed -i '' "s/^title = .*/title = \"$$TITLE\"/" "$$FILE"