VIM_PLUGINS_PATH = ${HOME}/.vim/pack/plugins/start

default:
	echo 'if you need init? `make init`'

init:
	make dir-add-plugins
	make plugin-add-nerdtree

dir-add-plugins:
	mkdir -p ${VIM_PLUGINS_PATH}

plugin-add-nerdtree:
	git clone https://github.com/scrooloose/nerdtree.git ${VIM_PLUGINS_PATH}/nerdtree

plugin-add-unimpaired:
	git clone https://github.com/tpope/vim-unimpaired.git ${VIM_PLUGINS_PATH}/vim-unimpaired
