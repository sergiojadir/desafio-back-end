# Quadro com tickets no Trello.
Para acompanhar o andamento das atividades do desafio no trello, [clique aqui](https://trello.com/b/iNArvCMC/blupagamentos-desafio-dev)

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

# Ruby version
2.6.3

# System dependencies
Rails -> 6.0.0

Redis -> 5.0.5 [Instalar redis](https://redis.io/topics/quickstart)

Nodejs (webpack rails) [Instalar nodejs](https://nodejs.org/en/download/package-manager/)

Postgresql

# Configuration
```ruby
	bundle install
```

# Database creation
```ruby
	bundle exec rake db:create
```

```ruby
	bundle exec rake db:migrate
```

```ruby
	bundle exec rake db:seed
```

# How to run the test suite
```ruby
	rspec spec
```

# Services (job queues, cache servers, search engines, etc.)
```ruby
	redis-server
```
```ruby
	bundle exec sidekiq
```
