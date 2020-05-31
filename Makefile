VIM_PLUGINS_PATH = ${HOME}/.vim/pack/plugins/start

default:
	echo 'if you need init? `make init`'

init:
	make dir_add_plugins
	make \
		plugin_add_nerdtree \
		plugin_add_unimpaired \
		plugin_add_vinegar \
		plugin_add_ctrlp \
		plugin_add_easymotion \
		plugin_add_iceberg

dir_add_plugins:
	mkdir -p ${VIM_PLUGINS_PATH}

plugin_add_nerdtree:
	git clone https://github.com/scrooloose/nerdtree.git ${VIM_PLUGINS_PATH}/nerdtree

plugin_add_unimpaired:
	git clone https://github.com/tpope/vim-unimpaired.git ${VIM_PLUGINS_PATH}/vim-unimpaired

plugin_add_vinegar:
	git clone https://github.com/tpope/vim-vinegar.git ${VIM_PLUGINS_PATH}/vim-vinegar

plugin_add_ctrlp:
	git clone https://github.com/ctrlpvim/ctrlp.vim.git ${VIM_PLUGINS_PATH}/ctrlp.vim

plugin_add_easymotion:
	git clone https://github.com/easymotion/vim-easymotion.git ${VIM_PLUGINS_PATH}/vim-easymotion

plugin_add_iceberg:
	git clone https://github.com/cocopon/iceberg.vim.git ${VIM_PLUGINS_PATH}/iceberg.vim

option_plugin_add_pgmnt:
	git clone https://github.com/cocopon/pgmnt.vim.git ${VIM_PLUGINS_PATH}/pgmnt.vim

set_git_merge_tool:
	git config --global merge.tool vimdiff
	git config --global merge.conflictstyle diff3
	git config --global mergetool.prompt false
