# Api with Rails 5.0.1

This is simple api created for demo to use in Rails 5.0.1

Models users (authenticate) and pet

# For create new user 

Not depend token

POST to http://localhost:3000/user/ JSON {'name':'Test','email':'test@mail.com','password':'123123123'}

Response: 
{
  "auth_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1LCJleHAiOjE0OTE3ODE3MDB9.CkdtETJC0KDWZhqCLbWeTT8w2ir4wcp8B2WsGCV1sRc"
}


# For get token (login)

POST http://localhost:3000/authenticate/ JSON {'email':'test@mail.com','password':'123123123'}


# For create pet

Depend Token

Send Headers Authorization : "auth_token"

POST http://localhost:3000/pets/ JSON {"name":"TOTO","kind":"dog"}



Things you may want to cover:

* Ruby version => 5.0.1

* System dependencies

* Configuration

* Database creation: SQLite

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* How to use AppApi

# Links: 

https://www.pluralsight.com/guides/ruby-ruby-on-rails/token-based-authentication-with-ruby-on-rails-5-api

http://blog.locaweb.com.br/artigos/ruby/apis-descomplicadas-no-rails-5-com-rails-api/