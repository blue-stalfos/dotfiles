#-- START ZCACHE GENERATED FILE
#-- GENERATED: Mon Apr  8 12:38:02 EDT 2019
#-- ANTIGEN v2.2.3
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  local MATCH MBEGIN MEND
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/usr/local/Cellar/antigen/2.2.3/share/antigen/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib /Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm /Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/osx /Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/thefuck /Users/Richard/.antigen/bundles/zsh-users/zsh-syntax-highlighting /Users/Richard/.antigen/bundles/zsh-users/zsh-autosuggestions /Users/Richard/.antigen/bundles/mafredri/zsh-async /Users/Richard/.antigen/bundles/jackharrisonsherlock/common) path+=(/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib /Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm /Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/osx /Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/thefuck /Users/Richard/.antigen/bundles/zsh-users/zsh-syntax-highlighting /Users/Richard/.antigen/bundles/zsh-users/zsh-autosuggestions /Users/Richard/.antigen/bundles/mafredri/zsh-async /Users/Richard/.antigen/bundles/jackharrisonsherlock/common)
_antigen_compinit () {
  autoload -Uz compinit; compinit -i -d "/Users/Richard/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh" ]]; then
  ZSH="/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh"; ZSH_CACHE_DIR="/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/cache/"
fi
#--- BUNDLES BEGIN
source '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh';
source '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh';
source '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh';
source '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh';
source '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh';
source '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh';
source '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh';
source '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh';
source '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh';
source '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh';
source '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh';
source '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh';
source '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh';
source '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh';
source '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh';
source '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh';
source '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh';
source '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh';
source '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh';
source '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm/npm.plugin.zsh';
source '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/osx/osx.plugin.zsh';
source '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/thefuck/thefuck.plugin.zsh';
source '/Users/Richard/.antigen/bundles/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh';
source '/Users/Richard/.antigen/bundles/zsh-users/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh';
source '/Users/Richard/.antigen/bundles/mafredri/zsh-async/async.plugin.zsh';
source '/Users/Richard/.antigen/bundles/jackharrisonsherlock/common/common.zsh-theme.antigen-compat';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/robbyrussell/oh-my-zsh.git lib plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/npm plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/osx plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/thefuck plugin true' 'https://github.com/zsh-users/zsh-syntax-highlighting.git / plugin true' 'https://github.com/zsh-users/zsh-autosuggestions.git / plugin true' 'https://github.com/mafredri/zsh-async.git / plugin true' 'https://github.com/jackharrisonsherlock/common.git / plugin true' 'https://github.com/jackharrisonsherlock/common.git / theme true')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -ga _ZCACHE_BUNDLE_SOURCE; _ZCACHE_BUNDLE_SOURCE=('/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm/npm.plugin.zsh' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/osx' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/osx/osx.plugin.zsh' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/thefuck' '/Users/Richard/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/thefuck/thefuck.plugin.zsh' '/Users/Richard/.antigen/bundles/zsh-users/zsh-syntax-highlighting//' '/Users/Richard/.antigen/bundles/zsh-users/zsh-syntax-highlighting///zsh-syntax-highlighting.plugin.zsh' '/Users/Richard/.antigen/bundles/zsh-users/zsh-autosuggestions//' '/Users/Richard/.antigen/bundles/zsh-users/zsh-autosuggestions///zsh-autosuggestions.plugin.zsh' '/Users/Richard/.antigen/bundles/mafredri/zsh-async//' '/Users/Richard/.antigen/bundles/mafredri/zsh-async///async.plugin.zsh' '/Users/Richard/.antigen/bundles/jackharrisonsherlock/common//' '/Users/Richard/.antigen/bundles/jackharrisonsherlock/common//' '/Users/Richard/.antigen/bundles/jackharrisonsherlock/common///common.zsh-theme')
typeset -g _ANTIGEN_CACHE_VERSION; _ANTIGEN_CACHE_VERSION='v2.2.3'

#-- END ZCACHE GENERATED FILE
