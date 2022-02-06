DWM_SRC = dwm/transient.c dwm/config.h dwm/util.c dwm/drw.h dwm/drw.c dwm/dwm.c

.PHONY: dwm
dwm: dwm/dwm

dwm/dwm: $(DWM_SRC)
	make -C ./dwm && echo "DWM built! Now 'make install && make configs' and you will be good to go."

.PHONY: install
install: dwm/dwm
	sudo make -C ./dwm install

.PHONY: configs
configs:
	mkdir -p $(HOME)/.local/share/dwm

	ln -s $(PWD)/configs/autostart.sh $(HOME)/.local/share/dwm || true
	ln -s $(PWD)/configs/status.sh $(HOME)/.local/share/dwm || true

	mkdir -p $(HOME)/.config/sxhkd
	ln -s $(PWD)/configs/sxhkdrc $(HOME)/.config/sxhkd || true

	echo "Configs linked! Make sure sxhkd is installed."

.PHONY: clean
clean:
	make -C ./dwm clean
