This is a repo I've set up to store my user preferences.  It uses [oh-my-zsh shell](https://github.com/robbyrussell/oh-my-zsh) and has some git settings.  
If you already have an '~/.oh-my-zsh' directory, you may want to remove it first.

To get started, clone this repo then:
```
cd ~
git init
git remote add origin git@github.com:<username>/config.git
git fetch
git branch master origin/master
git reset --hard origin/master # This will overwrite any local files!
```

Then to pull in oh-my-zsh:
```
git submodule init
git submodule update
```

Set zsh as your default shell:
```
chsh -s /bin/zsh
```

Set your git username and email
```
git config --global user.name "Your name here"
git config --global user.email "you@example.com"
```

Start / restart zsh (open a new terminal)
