# Infos

The project allows you to manage your meetings by sharing polls.

[![Click and Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

# How does it work

## Install

Install ruby 2.3.0 or greater, and ruby gems. Then be sure you have postgresql stuff.

**not compatible with older versions**

```sh
gem install bundler
bundle install
```

Then install the database:

```sh
cp config/database.yml.example config/database.yml
edit config/database.yml # ...
rake db:create
rake db:migrate
rake db:seed
```

## Start

```bash
rails s
```
