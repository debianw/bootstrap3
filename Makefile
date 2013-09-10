STYLES = $(css/*.css)

build: components index.js $(STYLES)
	@component build --dev

components: component.json
	@component install --dev

clean:
	rm -fr build components

.PHONY: clean
