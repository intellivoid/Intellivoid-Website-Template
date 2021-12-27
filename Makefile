clean:
	rm -rf build

build:
	mkdir build
	ppm --no-intro --compile="assets_src" --directory="build"

update:
	ppm --generate-package="assets_src"

install:
	ppm --no-intro --no-prompt --fix-conflict --install="build/net.intellivoid.website_template.ppm"

install_fast:
	ppm --no-intro --no-prompt --fix-conflict --skip-dependencies --install="build/net.intellivoid.website_template"