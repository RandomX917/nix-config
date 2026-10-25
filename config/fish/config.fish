set -gx EDITOR nvim
set -gx VISUAL nvim
fish_add_path $HOME/.local/bin
fish_add_path $HOME/bin
fish_vi_key_bindings
set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_replace_one underscore

if status is-interactive
	export NIXPKGS_ALLOW_UNFREE=1
	fastfetch
end
#alias obs="env QT_QPA_PLATFORM=xcb obs & disown"
alias s6-sudoasrun0please="sudo"
alias owui="docker run -d -p 3000:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --restart always ghcr.io/open-webui/open-webui:main"
if command -q eza
    alias ls="eza --icons --group-directories-first"
    alias ll="eza -lah --icons --group-directories-first"
    alias la="eza -A --icons --group-directories-first"
    alias lt="eza --tree --level=2 --icons"
else
    alias ls="ls --color=auto"
    alias ll="ls -lah"
    alias la="ls -A"
end
alias xdroid="~/thing.sh"
alias gaa="git add ."
alias ga="git add"
alias gs="git status"
alias gc="git commit"
alias gp="git push"
alias gpl="git pull"
alias nrs="sudo nixos-rebuild switch"
alias nfu="nix flake update"
alias nd="nix develop"
alias say="echo"
alias snip="/home/random/snip.sh"
zoxide init fish | source
function fish_prompt; set_color cyan; echo -n (whoami); set_color normal; echo -n "@"; set_color blue; echo -n (prompt_hostname); set_color normal; echo -n " "; set_color yellow; echo -n (prompt_pwd); set_color red; fish_git_prompt; set_color normal; echo -n " ❯ "; end
#function fish_mode_prompt; set_color white; switch $fish_bind_mode; case insert; echo -n "[I]"; case default; echo -n "[N]"; case visual; echo -n "[V]"; end; set_color normal; end
	#function fish_prompt; set_color white; echo -n (whoami); echo -n "@"; echo -n (prompt_hostname); echo -n " "; echo -n (prompt_pwd); fish_git_prompt; echo -n " ❯ "; set_color normal; end
#set -gx NO_COLOR 1
#set -gx CLICOLOR 0
#set -gx LS_COLORS ""
# mono fish
#set -g fish_color_normal white
#set -g fish_color_command white
#set -g fish_color_keyword white
#set -g fish_color_quote white
#set -g fish_color_redirection white
#set -g fish_color_end white
#set -g fish_color_error white
#set -g fish_color_param white
#set -g fish_color_comment white
#set -g fish_color_operator white
#set -g fish_color_escape white
#set -g fish_color_autosuggestion white
#set -g fish_color_valid_path white
set fish_greeting ""
