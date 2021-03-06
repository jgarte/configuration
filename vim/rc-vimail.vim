" vim: set filetype=vim :

source ~/racine/config/edit/vim/vimrc

set filetype=mail

packadd vim-mail

let g:VimMailStartFlags="riOoAIb"
let g:VimMailContactQueryCmd="abook --mutt-query '%s'"

let g:VimMailSpellLangs=['fr', 'en']

let g:VimMailDoNotMap=0
let g:VimMailDoNotFold=0
let g:VimMailDontUseComplete=0
