function fish_prompt --description 'Prompt ausgeben'
   if not set -q __fish_prompt_hostname
       set -g __fish_prompt_hostname (hostname -s)
   end

   if not set -q __fish_prompt_normal
       set -g __fish_prompt_normal (set_color normal)
   end

   if not set -q __fish_prompt_cwd
       set -g __fish_prompt_cwd (set_color red) #$fish_color_cwd)
   end

   echo
   echo -n -s "$__fish_prompt_cwd" (prompt_pwd) (__fish_git_prompt)
   echo
   echo -n -s "$__fish_prompt_normal" '$ '
end
