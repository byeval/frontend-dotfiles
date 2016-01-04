# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles
for file in ~/.dotfiles
do
  [ -f "$file ] && source "$file"
done

