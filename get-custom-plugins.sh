#!/bin/bash

pushd ~/.vim_runtime/my_plugins
    rm -rf vim-bookmarks
    `git clone https://github.com/MattesGroeger/vim-bookmarks.git`

    rm -rf fencview
    `git clone https://github.com/mbbill/fencview.git`

    rm -rf grep.vim
    `git clone https://github.com/vim-scripts/grep.vim.git`

    rm -rf vim-colorscheme-switcher
    `https://github.com/xolox/vim-colorscheme-switcher.git`

    rm -rf vim-dirdiff
    `git clone https://github.com/will133/vim-dirdiff.git`

    rm -rf vim-easygrep
    `https://github.com/dkprice/vim-easygrep.git`

    rm -rf vimwiki
    `git clone https://github.com/vimwiki/vimwiki.git`
popd
