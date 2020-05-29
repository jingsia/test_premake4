all: debug

debug:
	premake4 --os=linux --platform=x64 gmake
	@if [ -d allmake ]; then config=debug $(MAKE) -j$(COUNT) -C allmake; fi
