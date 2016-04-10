# Welcome to Simple Poker

Simple Poker is basic online poker game with options for creating and deleting rooms.
Featuring dynamic chat between players.Every user has all rights.

# Getting Started

## Install Rails and RVM

```
$ curl -L https://get.rvm.io | bash -s stable --ruby --rails
```

## Install Rails using RubyGems

```
$ gem install rails
```

## Install Postgres

```
$ sudo apt-get install postgresql postgresql-contrib libpq-dev
```

* Change fields `peer` and `md5` to `trusted` in

`/etc/postgresql/9.3/main/pg_hba.conf`

## Restart psql server

```
$ sudo service postgresql restart
```

## Create Database User

```
$ sudo su postgres -c 'createuser --superuser shat_user'
```

### Set a password

```
$ sudo -u postgres psql
```

```postgres=#``` prompt will appear, and enter this command:

```
$ postgres=#\password shat_user
```

* enter your desired password and confirm it

### Exit postgreSQL


```
$ postgres=#\q
```

## Install dependency gems

```
$ bundle install
```

## Create database

```
$ bundle exec rake db:create
```

## Run migrations

```
$ bundle exec rake db:migrate
```

