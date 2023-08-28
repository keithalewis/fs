FLAGS =
TEXFLAGS += -V fontsize=12pt
TEXFLAGS += --metadata date="$(shell date "+%B %e, %Y")"

%.html: %.md $(CSS)
	pandoc $(FLAGS) $< -o $@

%.pdf: %.md $(CSS)
	pandoc $(TEXFLAGS) $< -o $@

