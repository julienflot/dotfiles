CONFIGS = nvim kitty fish
CONFIGS_PATH = ~/.config
CONFIGS_CLEAN = $(CONFIGS:%=%-clean)

.PHONY: $(CONFIGS) clean all

all: $(CONFIGS)

$(CONFIGS):
	mkdir -p $(CONFIGS_PATH)/$@
	stow -R -t $(CONFIGS_PATH)/$@ $@

$(CONFIGS_CLEAN):
	stow -D -t $(CONFIGS_PATH)/$(@:%-clean=%) $(@:%-clean=%)
	rm -rf $(CONFIGS_PATH)/$(@:%-clean=%) 

clean: $(CONFIGS_CLEAN)
