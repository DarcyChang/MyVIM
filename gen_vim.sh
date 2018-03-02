#! /bin/sh

print_info () {
	msg=$1
	echo "INFO >> $msg"
}

mkdir -p vim/autoload vim/bundle vim/syntax

print_info "install ctrlp"
git clone -q https://github.com/kien/ctrlp.vim.git          vim/bundle/ctrlp.vim

print_info "install molokai"
git clone -q https://github.com/tomasr/molokai.git          vim/bundle/molokai

print_info "install nerdtree"
git clone -q https://github.com/scrooloose/nerdtree.git     vim/bundle/nerdtree

print_info "install vim-airline"
git clone -q https://github.com/vim-airline/vim-airline.git    vim/bundle/vim-airline
git clone -q https://github.com/vim-airline/vim-airline-themes vim/bundle/vim-airline-themes

print_info "install OmniCppComplete"
git clone -q https://github.com/vim-scripts/OmniCppComplete.git    vim/bundle/omnicppcomplete

print_info "install acp"
git clone -q https://github.com/vim-scripts/AutoComplPop.git    vim/bundle/acp

#print_info "install universal-ctags"
#git clone -q https://github.com/universal-ctags/ctags.git    vim/bundle/universal-ctags

print_info "install exuberant-ctags"
git clone -q https://github.com/rentalcustard/exuberant-ctags.git    vim/bundle/exuberant-ctags

print_info "install cscope"
git clone -q https://github.com/vim-scripts/cscope.vim.git    vim/bundle/cscope

print_info "install taglist"
mkdir -p vim/bundle/taglist_46 && \
unzip -qq pkgs/taglist_46.zip -d vim/bundle/taglist_46 && \

print_info "install pathogen"
curl -LSso vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

print_info "install syntax"
curl -LSso vim/syntax/arduino.vim 'http://www.vim.org/scripts/download_script.php?src_id=23284'

print_info "copy vimrc"
cp config/vimrc vim

print_info "DONE, have fun :-)"
