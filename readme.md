# Shoe Company CEO Store/Brand Management Site

#### An app that allows the user to manage a shoe company's Stores and Brands, 16 Dec 2016

#### By Jim Padilla

## Description

This Ruby app has a front end interface where a user can create stores and brands. The user can also update and delete these entries and assign brands to a store.

## Setup/Installation Requirements

* Clone from Github:
  * $ git clone https://github.com/JPCodes/shoe-distribution
  * $ cd shoe-distribution
  * $ bundle install

For the database functionality, use the terminal to run these commands to get the proper databases and tables installed:

```
postgres
psql
rake db:create
rake db:migrate
rake db:test:prepare
```

* Run it in the browser:
  * $ app.rb
  * navigate to http://localhost:4567

## Support and contact details

Github: [JPCodes](https://github.com/JPCodes)
Twitter: [jp_code2015](https://twitter.com/jp_code2015)

## Technologies Used

* Bootstrap
* Ruby
  * ActiveRecord
  * Sinatra
  * Rspec
  * Capybara
  * PG
* SQL
  * PSQL

### License

MIT License

Copyright (c) 2016 Jim Padilla
