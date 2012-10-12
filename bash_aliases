# Todo
alias todo='$EDITOR ~/.todo'

# Unix
alias tlf="tail -f"
alias ln='ln -v'
alias mkdir='mkdir -p'
alias ...='../..'
alias l='ls'
alias ll='ls -al'
alias lh='ls -Alh'

# git
alias g="git"
alias gci="git pull --rebase && rake && git push"
alias gb='git branch'
alias gba='git branch -a'
alias gco='git checkout'
alias gc='git commit -a -v'
alias gd='git diff --color-words | less -r'
alias gl='git pull'
alias gp='git push'
alias gst='git status'
alias ga='git add -u'
alias sgl='git svn rebase'
alias sgp='git svn dcommit'

# Bundler
alias b="bundle"
alias be="bundle exec"
alias bake="bundle exec rake"

# Tests and Specs
alias t="ruby -I spec"
alias s="bundle exec rspec"
alias cuc="bundle exec cucumber"

# Rubygems
alias gi="gem install"
alias giv="gem install -v"

# Rails
alias migrate="rake db:migrate db:test:prepare"
alias remigrate="rake db:migrate db:migrate:redo db:schema:dump db:test:prepare"
alias remongrate="rake mongoid:migrate mongoid:migrate:redo"

# Heroku staging
alias staging='heroku run console --remote staging'
alias staging-name='echo `basename $PWD`-staging'
alias staging-process='watch heroku ps --remote staging'
alias staging-releases='heroku releases --remote staging'
alias staging-tail='heroku logs --tail --remote staging'

# Heroku production
alias production='heroku run console --remote production'
alias production-name='echo `basename $PWD`-production'
alias production-process='watch heroku ps --remote production'
alias production-releases='heroku releases --remote production'
alias production-tail='heroku logs --tail --remote production'

# Heroku databases
alias db-pull-staging='heroku db:pull --remote staging --confirm `staging-name`'
alias db-pull-production='heroku db:pull --remote production --confirm `production-name`'
alias db-copy-production-to-staging='heroku pgbackups:restore DATABASE `heroku pgbackups:url --app production-name` --app `staging-name` --confirm `staging-name`'
alias db-backup-production='heroku pgbackups:capture --remote production'

# Network
alias whats-my-ip="curl -s checkip.dyndns.org | grep -Eo '[0-9\.]+'"
