![截图](https://i.imgur.com/ScFMDYe.png)

#### 使用

macOS/Linux:

    git clone https://github.com/LujianDuan/vimrc.git ~/.vim

windows cmd.exe:

    git clone https://github.com/LujianDuan/vimrc.git %USERPROFILE%\vimfiles

`7.4 之前的版本`需要做个软链:

    macOS/Linux: ln -s ~/.vim/vimrc ~/.vimrc

    windows: 创建快捷方式：%USERPROFILE%\_vimrc

#### 自定义本地配置

通过编辑 `~/.vim/local/vimrc` 文件自定义本地配置，编辑之后在 vim 命令行中执行
`:source ~/.vim/local/vimrc` ，或者重新打开 vim使配置生效。

#### 插件管理

这里以 [Vundle] 插件管理器为例:

首先下载 Vundle 插件管理器：

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#####shell命令安装:

    ```vim +PluginInstall +qall```

#####OR
#####Vim 命令行执行安装:

    :PluginInstall

等待至出现Done!, 配置的插件就安装完成了。

[Vundle]: https://github.com/VundleVim/Vundle.vim
