DOTFILE_DIR="$HOME/.dotfiles"

for DOTFIEL in "$DOTFILE_DIR"/bash/.{function,alias}; do
	[ -f "$DOTFILE" ] && . "DOTFILE"
done

# Source file is extra dir

EXTRA_DIR="$HOME/.extra"

if [ -d "$EXTRA_DIR" ]; then
	for EXTRAFILE in "$EXTRA_DIR"/*.sh; do
		[ -f "$EXTRAFILE" ] && . "$EXTRAFILE"
	done
fi

