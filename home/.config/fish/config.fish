set fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path ~/.local/bin
fish_add_path ~/.dotnet
fish_add_path ~/.bun/bin

set -x DOTNET_ROOT "$HOME/.dotnet"
set -x EDITOR nvim

starship init fish | source
# >>> mise:activate >>> managed by mise — do not edit between markers
if status is-interactive
    mise activate fish | source
else
    mise activate fish --shims | source
end
# <<< mise:activate <<<
