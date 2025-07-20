sudo apt install -y alacritty
mkdir -p ~/.config/alacritty

cat << 'EOF' | sudo tee ~/.config/alacritty/alacritty.toml
import = [ "~/.config/alacritty/theme.toml", "~/.config/alacritty/font.toml", "~/.config/alacritty/shared.toml" ]
EOF

cat << 'EOF' | sudo tee ~/.config/alacritty/shared.toml
[env]
TERM = "xterm-256color"

[shell]
program = "zellij"

[window]
padding.x = 16
padding.y = 14
decorations = "None"
opacity = 0.98

[keyboard]
bindings = [
{ key = "F11", action = "ToggleFullscreen" }
]
EOF

cat << 'EOF' | sudo tee ~/.config/alacritty/pane.toml
# Used by the About.desktop, Activity.desktop, Docker.desktop, Omakub.desktop, and Neovim.desktop apps
import = [ "~/.config/alacritty/theme.toml", "~/.config/alacritty/font.toml", "~/.config/alacritty/font-size.toml", "~/.config/alacritty/shared.toml" ]

[window]
padding.x = 30
padding.y = 30
EOF

cat << 'EOF' | sudo tee ~/.config/alacritty/btop.toml
# Used by the Activity.desktop app
import = [ "~/.config/alacritty/pane.toml" ]

[window]
dimensions.columns = 121
dimensions.lines = 40
EOF

cat << 'EOF' | sudo tee ~/.config/alacritty/theme.toml
[colors.primary]
background = '#ffffff'
foreground = '#24292f'

# Normal colors
[colors.normal]
black   = '#24292e'
red     = '#d73a49'
green   = '#28a745'
yellow  = '#dbab09'
blue    = '#0366d6'
magenta = '#5a32a3'
cyan    = '#0598bc'
white   = '#6a737d'

# Bright colors
[colors.bright]
black   = '#959da5'
red     = '#cb2431'
green   = '#22863a'
yellow  = '#b08800'
blue    = '#005cc5'
magenta = '#5a32a3'
cyan    = '#3192aa'
white   = '#d1d5da'

[[colors.indexed_colors]]
index = 16
color = '#d18616'

[[colors.indexed_colors]]
index = 17
color = '#cb2431'
EOF

cat << 'EOF' | sudo tee ~/.config/alacritty/font.toml
[font]
normal = { family = "JetBrainsMono Nerd Font Mono", style = "Regular" }
bold = { family = "JetBrainsMono Nerd Font Mono", style = "Bold" }
italic = { family = "JetBrainsMono Nerd Font Mono", style = "Italic" }
size = 9
EOF
