# Vim/Neovim Introduction

# 1 - Introduction Presentation & Slides
> [Recording](https://drive.google.com/file/d/1K8TIGNYzoWHMb-vzhNTm5YCafGFtaDZP/view?usp=sharing)

> [Slides](https://docs.google.com/presentation/d/1wjV7ZkUpGKpGNMRez3u3f5xuKYOkdVNHpT51TP1c0Mc/edit?usp=sharing)

# 2 - A Vscode like configed Neovim

##  Install

### 2.1 Try with pre-installed neovim 0.8.3 with docker (for testing)
#### Build the images (install from source in this case)
```bash
git clone https://source.servian.com/derekxiang/neovim.git
cd neovim
docker build -t neovim .
docker run --no-cache --rm -it -v <code dir>:<dir in container> neovim
```
#### Inside the container:
```
nvim
```
- First time, it will install all the plugins
- Press <Enter> to continue to install treesitter support for languages, which takes 1-2 minutes
- <p style="color:red">As this is in docker container, the disadvantage is when the lsp need environment support like detect whether your have installed some imported packages, it will promp error. Or you just have to install it in the container.</p>


### 2.2 Install on Mac
```bash
brew install neovim@0.8.3
git clone --depth 1 -b nvim8.3-ubuntu22.04 https://github.com/Derek-Xiang/Tool_Configs.git ~/.config/
```
- If there is already something in ~/.config, then clone the repo and only copy nvim to ~/.config/


## 3. References:
### Vim leaning:
> [Vim Adventure](https://vim-adventures.com/)
> VScode plugin: Learn Vim

### Neovim Config from zero
> Inside neovim, type :Tutor
> [Neovim IDE from Scratch - Introduction (100% lua config)](https://www.youtube.com/watch?v=ctH-a-1eUME&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ)
> [Awesome Neovim Setup From Scratch - Full Guide](https://www.youtube.com/watch?v=JWReY93Vl6g)
> [Neovim Lua From Scratch](https://www.youtube.com/watch?v=r3NOB8UjIPc&list=PLPDVgSbOnt7LXQ8DTzu37UwCpA0elyD0V)
> [Set up Neovim on a new M2 MacBook Air for coding React, TypeScript, Tailwind CSS, etc.](https://www.youtube.com/watch?v=ajmK0ZNcM4Q)

### Good plugins
> [Awesome Neovim](https://github.com/rockerBOO/awesome-neovim)

# 4 - Tmux

##  Install
```bash
# Install tmux
brew install tmux

# Install oh-my-tmux
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
```
- Copy the .tmux.conf.local to ~/.tmux.conf.local to utilize **Ctrl+hjkl** to navigate between tmux pane and neovim buffer
## References:
> [oh-my-tmux](https://github.com/namtzigla/oh-my-tmux)

