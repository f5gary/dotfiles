#!/bin/bash -x

# Try to do some distro detection, etc.
# DISTRO can be one of: fedora, redhat, or ubuntu
# PKGTOOL can be one of: yum, dnf, or apt-get
# PKGLIST is the list of package names used for the specific DISTRO
if [ -f /etc/redhat-release ]; then
  grep -ic fedora /etc/redhat-release >/dev/null
  if [ "$?" == "0" ]; then
    # Fedora
    DISTRO="fedora"
  else
    # Non-Fedora, assume they're all the same for now
    DISTRO="redhat"
  fi
  PKGTOOL="yum"
  which dnf >/dev/null 2>&1
  if [ "$?" == "0" ]; then
    PKGTOOL="dnf"
  fi
  PKGLIST="cmake ctags-etags golang nodejs npm python-devel"
else
  # Assume some flavor of ubuntu for now
  DISTRO="ubuntu"
  PKGTOOL="apt-get"
  # Need to refresh packages for ubuntu
  sudo ${PKGTOOL} update
  PKGLIST="cmake exuberant-ctags golang-go nodejs npm python-dev"
fi

# Install base packages. No need (yet) for different names per distro.
sudo ${PKGTOOL} install -y git tig tmux tree vim

# Install git-aware-prompt
if [ ! -d ~/.bash ]; then
  mkdir -p ~/.bash
  cd ~/.bash
  git clone git://github.com/jimeh/git-aware-prompt.git
fi

# Setup .bashrc
grep -c DEBEMAIL ~/.bashrc >/dev/null
if [ "$?" != "0" ]; then
  echo 'export DEBEMAIL="garyr@f5.com"' >> ~/.bashrc
fi
grep -c DEBFULLNAME ~/.bashrc >/dev/null
if [ "$?" != "0" ]; then
  echo 'export DEBFULLNAME="Gary Ritzer"' >> ~/.bashrc
fi
grep -c LS_COLORS ~/.bashrc >/dev/null
if [ "$?" != "0" ]; then
  echo 'LS_COLORS="rs=0:di=38;5;33:ln=38;5;51:mh=00:pi=40;38;5;11:so=38;5;13:do=38;5;5:bd=48;5;232;38;5;11:cd=48;5;232;38;5;3:or=48;5;232;38;5;9:mi=01;05;37;41:su=48;5;196;38;5;15:sg=48;5;11;38;5;16:ca=48;5;196;38;5;226:tw=48;5;10;38;5;16:ow=48;5;10;38;5;21:st=48;5;21;38;5;15:ex=38;5;40:*.tar=38;5;9:*.tgz=38;5;9:*.arc=38;5;9:*.arj=38;5;9:*.taz=38;5;9:*.lha=38;5;9:*.lz4=38;5;9:*.lzh=38;5;9:*.lzma=38;5;9:*.tlz=38;5;9:*.txz=38;5;9:*.tzo=38;5;9:*.t7z=38;5;9:*.zip=38;5;9:*.z=38;5;9:*.Z=38;5;9:*.dz=38;5;9:*.gz=38;5;9:*.lrz=38;5;9:*.lz=38;5;9:*.lzo=38;5;9:*.xz=38;5;9:*.bz2=38;5;9:*.bz=38;5;9:*.tbz=38;5;9:*.tbz2=38;5;9:*.tz=38;5;9:*.deb=38;5;9:*.rpm=38;5;9:*.jar=38;5;9:*.war=38;5;9:*.ear=38;5;9:*.sar=38;5;9:*.rar=38;5;9:*.alz=38;5;9:*.ace=38;5;9:*.zoo=38;5;9:*.cpio=38;5;9:*.7z=38;5;9:*.rz=38;5;9:*.cab=38;5;9:*.jpg=38;5;13:*.jpeg=38;5;13:*.gif=38;5;13:*.bmp=38;5;13:*.pbm=38;5;13:*.pgm=38;5;13:*.ppm=38;5;13:*.tga=38;5;13:*.xbm=38;5;13:*.xpm=38;5;13:*.tif=38;5;13:*.tiff=38;5;13:*.png=38;5;13:*.svg=38;5;13:*.svgz=38;5;13:*.mng=38;5;13:*.pcx=38;5;13:*.mov=38;5;13:*.mpg=38;5;13:*.mpeg=38;5;13:*.m2v=38;5;13:*.mkv=38;5;13:*.webm=38;5;13:*.ogm=38;5;13:*.mp4=38;5;13:*.m4v=38;5;13:*.mp4v=38;5;13:*.vob=38;5;13:*.qt=38;5;13:*.nuv=38;5;13:*.wmv=38;5;13:*.asf=38;5;13:*.rm=38;5;13:*.rmvb=38;5;13:*.flc=38;5;13:*.avi=38;5;13:*.fli=38;5;13:*.flv=38;5;13:*.gl=38;5;13:*.dl=38;5;13:*.xcf=38;5;13:*.xwd=38;5;13:*.yuv=38;5;13:*.cgm=38;5;13:*.emf=38;5;13:*.ogv=38;5;13:*.ogx=38;5;13:*.aac=38;5;45:*.au=38;5;45:*.flac=38;5;45:*.m4a=38;5;45:*.mid=38;5;45:*.midi=38;5;45:*.mka=38;5;45:*.mp3=38;5;45:*.mpc=38;5;45:*.ogg=38;5;45:*.ra=38;5;45:*.wav=38;5;45:*.oga=38;5;45:*.opus=38;5;45:*.spx=38;5;45:*.xspf=38;5;45:"' >> ~/.bashrc
fi
grep -c GITAWAREPROMPT ~/.bashrc > /dev/null
if [ "$?" != "0" ]; then
  echo 'export GITAWAREPROMPT=~/.bash/git-aware-prompt' >> ~/.bashrc
  echo 'source "${GITAWAREPROMPT}/main.sh"' >> ~/.bashrc
fi
grep -c PS1 ~/.bashrc > /dev/null
if [ "$?" != "0" ]; then
  echo 'export PS1="\[\033[36m\][\[\033[m\]\[\033[36m\]\u@\h\[\033[m\] \[\033[32m\]\W\[\033[m\]\[\033[36m\]]\[\033[m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "' >> ~/.bashrc
else
  sed -i 's/^\(export PS1=\).*/\1"\[\033[36m\][\[\033[m\]\[\033[36m\]\u@\h\[\033[m\] \[\033[32m\]\W\[\033[m\]\[\033[36m\]]\[\033[m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "/'
fi
grep -c bash_aliases ~/.bashrc >/dev/null
if [ "$?" != "0" ]; then
  echo "if [ -f ~/.bash_aliases ]; then" >> ~/.bashrc
  echo "  . ~/.bash_aliases" >> ~/.bashrc
  echo "fi" >> ~/.bashrc
fi
grep -c "alias ll='ls -l'" ~/.bashrc > /dev/null
if [ "$?" != "0" ]; then
  # Make sure any existing "alias ll" is my version
  sed -i "s/^\s*\(alias ll\)=.*/\1='ls -l'/" ~/.bashrc
fi

# Setup symbolic links
if [ ! -h ~/.bash_aliases ]; then
  ln -sf ~/dotfiles/bash_aliases ~/.bash_aliases
fi

# Configure git.
echo Configuring GIT
if [ ! -h ~/.gitconfig ]; then
  ln -sf ~/dotfiles/gitconfig ~/.gitconfig
fi
if [ ! -h ~/.gitmessage ]; then
  ln -sf ~/dotfiles/gitmessage ~/.gitmessage
fi

# Configure tig
echo Configuring TIG
if [ ! -h ~/.tigrc ]; then
  ln -sf ~/dotfiles/tigrc ~/.tigrc
fi

# Configure tmux
echo Configuring TMUX
if [ ! -h ~/.tmux.conf ]; then
  ln -sf ~/dotfiles/tmux.conf ~/.tmux.conf
fi

# Configure slickedit
echo Configuring SLICKEDIT
if [ ! -h ~/.slickedit ]; then
  ln -sf ~/dotfiles/slickedit ~/.slickedit
fi

# Configure vim
echo Configuring VIM
# Install stuff to make YouCompleteMe happy
if [ "${DISTRO}" == "redhat" ]; then
  # need epel repo
  sudo ${PKGTOOL} install -y epel-release
  sudo ${PKGTOOL} install -y ${PKGLIST} --enablerepo=epel
else
  sudo ${PKGTOOL} install -y ${PKGLIST}
fi

if [ ! -h ~/.vimrc ]; then
  ln -sf ~/dotfiles/vimrc ~/.vimrc
fi
if [ ! -h ~/.vim ]; then
  ln -sf ~/dotfiles/vim ~/.vim
fi
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  vim +PluginInstall +qall
fi
if [ ! -f ~/.vim/bundle/YouCompleteMe/third_party/ycmd/ycm_core.so ]; then
  cd ~/.vim/bundle/YouCompleteMe/
  git submodule update --recursive
  ./install.py --clang-completer --gocode-completer --arch 64
fi

