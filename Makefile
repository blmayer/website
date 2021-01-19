.PHONY: all

all:
	for f in static/*:
	do
		index="`cat $$f`" wrangler kv:key put --binding=pages "`basename $$f`" "$$value"
	done
