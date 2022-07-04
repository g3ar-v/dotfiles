POSSIBLE += $(zsh ls -l | egrep -v '\.dat|README|Makefile' | sed -e 's/$$/.dat/g')

all: $(POSSIBLE)

%.dat : %
		@strfile $< $@
		
