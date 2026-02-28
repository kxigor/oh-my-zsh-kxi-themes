export VIRTUAL_ENV_DISABLE_PROMPT=1

function venv_info() {
  if [[ -n "$VIRTUAL_ENV" ]]; then
    echo "%{\e[0;34m%}─[%{\e[1;33m%}${VIRTUAL_ENV:t}%{\e[0;34m%}]"
  fi
}

setopt PROMPT_SUBST

PROMPT=$'%{\e[0;34m%}%B┌─[%b%{\e[0m%}%{\e[1;32m%}%n%{\e[38;5;214m%}@%{\e[0m%}%{\e[0;36m%}%m%{\e[0;34m%}%B]%b%{\e[0m%} - %b%{\e[0;34m%}%B[%b%{\e[1;37m%}%~%{\e[0;34m%}%B]%(?.. %{\e[1;31m%}[!]%{\e[1;35m%}:%?)
%{\e[0;34m%}%B└$(venv_info)─%B[%{\e[1;35m%}$%{\e[0;34m%}%B]>%{\e[0m%}%b '
