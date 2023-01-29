# README

## Scope of the project
This is an implementation of a simple Ruby on Rails application to manage housing properties. 
The form used to create the properties uses AJAX to offer area suggestions to the user.

## System dependencies
The project depends on Ruby 2.7 and Ruby on Rails 7

### Ruby Installation
Using rbenv you can install Ruby 2.7.7

    sudo apt-get remove ruby    # remove system default ruby

    cd $HOME
    sudo apt-get update
    sudo apt-get upgrade
    sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt1-dev libcurl4-openssl-dev libffi-dev

    git clone https://github.com/rbenv/rbenv.git ~/.rbenv
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(rbenv init -)"' >> ~/.bashrc
    exec $SHELL

    git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
    echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
    exec $SHELL

    rbenv install 2.7.7
    
    cd ./feddimop
	rbenv local 2.7.7    # set the Ruby version for this directory
	ruby -v     # make sure you're on the right version

### Ruby on Rails Installation 
    gem install bundler
    rbenv rehash
	gem install rails
    rails -v     # make sure you're on the right version
	
## Configuration
    cd ./feddimop
    bundle install

## Database creation
    cd ./feddimop
    rails db:create
	
## Database initialization
    cd ./feddimop
    rails db:migrate
    rails db:seed

## How to run project
    cd ./feddimop
    rails server

## How to run the test suite
    cd ./feddimop
    rails test

## Packages used
* HTML5 placeholder Polyfill used for displaying prompt text in text input fields (https://github.com/ginader/HTML5-placeholder-polyfill)
* jQuery used for AJAX calls to the area API (https://jquery.com/)
* jQuery UI used for area autocomplete (https://jqueryui.com/)
