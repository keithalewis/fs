FLAGS =
TEXFLAGS += -V fontsize=12pt
TEXFLAGS += --metadata date="$(shell date "+%B %e, %Y")"
TEXFLAGS += --pdf-engine=xelatex

%.html: %.md $(CSS)
	pandoc $(FLAGS) $< -o $@

%.pdf: %.md $(CSS)
	pandoc $(TEXFLAGS) $< -o $@

