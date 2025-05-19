fonts_dir="$HOME/.local/share/fonts"
font_name="JetBrainsMono"

mkdir -p "$fonts_dir" && \
latest_tag=$(curl -s https://api.github.com/repos/ryanoasis/nerd-fonts/releases/latest | grep tag_name | cut -d '"' -f 4) && \
curl -L "https://github.com/ryanoasis/nerd-fonts/releases/download/${latest_tag}/${font_name}.zip" -o "/tmp/${font_name}.zip" && \
unzip -o "/tmp/${font_name}.zip" -d "$fonts_dir" && \
rm "/tmp/${font_name}.zip" && \
fc-cache -fv
