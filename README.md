# These files copy from andrewintw's skel-home
https://github.com/andrewintw

a auto-config skeleton for set up your $HOME directory

## Installation

clone the project to your $HOME top and rename to .$USER (ex: ~/.darcy )

	$ git clone https://github.com/DarcyChang/MyVIM.git ~/.$USER

	$ cd ~/.$USER
	$ ./init_setup.sh
	$ ./gen_vim.sh
	$ ./gen_links.sh
	$ sudo apt-get install cscope ctags

### optional

	$ ./add_fonts.sh		# install powerline-fonts
	$ ./add_syntastic.sh	# install syntastic vim plugin


after that, you might need to modify the file:

	* ~/.$USER/config/gitconfig

and there are some useful scripts in ~/.$USER/scripts folder.
you can copy to your $HOME or make a symbolic link to the script.

have fun :-)

sudo ln -s ~/.$USER/scripts/ansi_color_256.sh /usr/bin/ansi_color_256.sh
sudo ln -s ~/.$USER/scripts/drop_caches.sh /usr/bin/drop_caches.sh
sudo ln -s ~/.$USER/scripts/findtypef.sh /usr/bin/findtypef.sh
sudo ln -s ~/.$USER/scripts/indent_style.sh /usr/bin/indent_style.sh
sudo ln -s ~/.$USER/scripts/myfind.sh /usr/bin/myfind.sh
sudo ln -s ~/.$USER/scripts/synergyc.sh /usr/bin/synergyc.sh
sudo ln -s ~/.$USER/scripts/vncservice.sh /usr/bin/vncservice.sh
sudo ln -s ~/.$USER/scripts/gen_ctags.sh /usr/bin/gen_ctags.sh

### Plugin 

	1. pathogen.vim
	manage your runtimepath

	2. ctrlp.vim
	For search files.

	3. molokai
	color scheme

	4. syntastic
	Syntax checking hacks for vim

	5. vim-airline and vim-airline-themes
	lean & mean status/tabline for vim that's light as air

	6. AutoComplPop
	Complete string

	7. OmniCppComplete, universal-ctags, exuberant-ctags, cscope
	Doesn't work.


### cscope usage

	$ cd /SDK/path && cscope -Rbqk

	其中最後的nmap部分為快捷鍵，其中的第一行指的是可使用zs取代在vim裡輸入:cs find s {name}的指令，後面依此類拖
	官網給的設定檔快捷鍵為Ctrl+/+s的組合，不過我是用VIM7.4，對於三個以上的組合鍵似乎有使用上的問題，這部分還沒找到解決方式，因此就先用兩個的組合鍵

	最後附上各指令的用途

	:cs find s {name} : 找出C語言name的符號
	:cs find g {name} : 找出name定義的地方
	:cs find c {name} : 找出使用name的地方
	:cs find t {name} : 找出name的字串
	:cs find e {name} : 相當於egrep功能，但速度更佳
	:cs find f {name} : 尋找檔案
	:cs find i {name} : 尋找include此檔案的檔案
	:cs find d {name} : 尋找name裡面使用到的函式

	Reference:
	http://ivan7645.github.io/2016/07/12/vim_to_si/
