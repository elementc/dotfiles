function fish_title
  echo (prompt_pwd)
end

function fish_greeting
  fortune | lolcat
end

function notify
   if test $status -eq 0
       set icon terminal
       set result "Task finished!"
   else
       set icon error
       set result "Task failed! (Error code $status.)"
   end
   notify-send --urgency=low --app-name="$_" -i $icon $_ "$result"
end

# Use cargo-managed bins.
set PATH /home/casey/.cargo/bin $PATH

# Use other user-installed bins
set PATH /home/casey/.local/bin $PATH

# Use starship.
eval (starship init fish)
