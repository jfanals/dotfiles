Installation

    git clone git://github.com/ischnura/dotfiles.git

Inside of ~/.vim make /tmp, inside of which mkdir swap backup undo

    mkdir ~/.vim ~/.vim/tmp ~/.vim/tmp/swap ~/.vim/tmp/undo ~/.vim/tmp/backup

Install vundle vim plugin to download the rest of the plugins

    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Then on vim run

    :BundleUpdate :BundleInstall

install ctags, ack, ag

    sudo packer -S silver-searcher-git ack ctags
    sudo apt-get install ack-grep

install zsh mc vim-nox

    sudo apt-get install mc zsh vim-nox

make zsh default shell

    chsh -s /bin/zsh

start and attach to tmux

    tmux new -s work
    tmux attach -f work

need to create .gitconfig.user with user credentials such as

    [user]
       name = Paco Chocolatero        
       email = paco@chocolatero.com 

link to authorised keys

    ln -s ~/dotfiles/.ssh/authorized_keys ~/.ssh/

cp basic .vimrc .tmux and .gitconfig
    cp dotfiles/.vimrc .
    cp dotfiles/.gitconfig .
    cp dotfiles/.tmux

install oh-my-zsh

    curl -L http://install.ohmyz.sh | sh
