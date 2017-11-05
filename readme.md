# TODO
* make symlinks automatic in setup.sh script

1) better tab to auto complete:

create file called ‘.inputrc’:
paste the following and save:

set completion-ignore-case on
set show-all-if-ambiguous on
TAB: menu-complete



2)

setting up github credentials:
 
first check if credential helper is installed with:
	git credential-osxkeychain

then : git config —-global credential.helper osxkeychain

from the next time on your git password will be stored


3)

setting up terminal to be more friendly with git:
put files in home directory, profile should be pasted in the bottom of existing profile

run these commands:

	git config --global core.editor "subl -n -w"
or 
	git config --global core.editor "'/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl' -n -w"

then
	git config --global push.default upstream
	git config --global merge.conflictstyle diff3

4)

use git remote -v to check if pushing and fetching to right url