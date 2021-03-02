setup:
	./script/setup.sh
	open SampleRouter.xcodeproj
.PHONY: setup

clean:
	./script/clean.sh
.PHONY: clean

component:
ifdef name
	mint run pui generate MVC ${name}
else
	@echo "make component name=<component name>"
endif
.PHONY: component