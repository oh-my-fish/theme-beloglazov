# The fish_mode_prompt function is prepended to the prompt
function fish_mode_prompt --description "Displays the current mode"
  # Do nothing if not in vi mode
  if test "$fish_key_bindings" = "fish_vi_key_bindings"
    switch $fish_bind_mode
      case default
        set_color --bold red
        echo '[n]'
      case insert
        set_color --bold green
        echo '[i]'
      case replace-one
        set_color --bold yellow
        echo '[r]'
      case visual
        set_color --bold magenta
        echo '[v]'
    end
    set_color normal
    echo -n ' '
  end
end
