if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
export PATH=$PATH:/Developer/android/android-sdk-macosx/tools
export PATH=$PATH:/Applications/MAMP/Library/bin
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
