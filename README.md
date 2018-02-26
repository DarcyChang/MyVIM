# These files copy from andrewintw's skel-home
a auto-config skeleton for set up your $HOME directory

## Installation

clone the project to your $HOME top and rename to .$USER (ex: ~/.darcy )

	$ git clone https://github.com/DarcyChang/MyVIM.git ~/.$USER

	$ cd ~/.$USER
	$ ./init_setup.sh
	$ ./gen_vim.sh
	$ ./gen_links.sh

### optional

	$ ./add_fonts.sh		# install powerline-fonts
	$ ./add_syntastic.sh	# install syntastic vim plugin


after that, you might need to modify the file:

	* ~/.$USER/config/gitconfig

and there are some useful scripts in ~/.$USER/scripts folder.
you can copy to your $HOME or make a symbolic link to the script.

have fun :-)

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

### cscope usage

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
