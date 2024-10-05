# Hello App

[![Build Status](https://github.com/boutquin/hello_app/actions/workflows/ci.yml/badge.svg)](https://github.com/boutquin/hello_app/actions)
[![MiniTest](https://github.com/boutquin/hello_app/actions/workflows/ci.yml/badge.svg)](https://github.com/boutquin/hello_app/actions/workflows/ci.yml)
[![Coverage Status](https://coveralls.io/repos/github/boutquin/hello_app/badge.svg?branch=main)](https://coveralls.io/github/boutquin/hello_app?branch=main)
[![MIT License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
![Ruby](https://img.shields.io/badge/Ruby-3.3.5-red)
![Rails](https://img.shields.io/badge/Rails-8.0.0.beta1-red)
![TailwindCSS](https://img.shields.io/badge/TailwindCSS-2.2.19-blue)
![FlowBite](https://img.shields.io/badge/FlowBite-1.4.7-blue)

This is a Ruby on Rails application. This README will document the steps necessary to get the application up and running.

## Table of Contents

- [Ruby Version](#ruby-version)
- [System Dependencies](#system-dependencies)
- [Configuration](#configuration)
- [Database Creation](#database-creation)
- [Database Initialization](#database-initialization)
- [How to Run the Test Suite](#how-to-run-the-test-suite)
- [Dependencies/Features](#dependenciesfeatures)
- [Services](#services)
- [Deployment Instructions](#deployment-instructions)
- [Contributing](#contributing)
- [License](#license)

## Ruby Version

This application requires Ruby 3.3.5. Ensure you have the correct version installed.

## System Dependencies

- Ruby 3.3.5
- Rails 8.0.0.beta1
- PostgreSQL
- Node.js
- Yarn

## Configuration

1. Clone the repository:

   ~~~sh
   git clone https://github.com/boutquin/hello_app.git
   cd hello_app
   ~~~

2. Install the required gems:

   ~~~sh
   bundle install
   ~~~

3. Install JavaScript dependencies:

   ~~~sh
   yarn install
   ~~~

## Database Creation

1. Create the database:

   ~~~sh
   bin/rails db:create
   ~~~

## Database Initialization

1. Run the database migrations:

   ~~~sh
   bin/rails db:migrate
   ~~~

2. Seed the database (if applicable):

   ~~~sh
   bin/rails db:seed
   ~~~

## How to Run the Test Suite

1. Prepare the test database:

   ~~~sh
   bin/rails db:test:prepare
   ~~~

2. Run the tests:

   ~~~sh
   bin/rails test
   ~~~

## Dependencies/Features

This application uses the following gems:

- **Rails 8.0.0.beta1**: A web-application framework that includes everything needed to create database-backed web applications.
- **bootsnap 1.18.4**: Boot large Ruby/Rails apps faster.
- **brakeman 6.2.1**: A static analysis security vulnerability scanner for Ruby on Rails applications.
- **capybara 3.40.0**: Acceptance test framework for web applications.
- **debug 1.9.2**: Debugging tool for Ruby.
- **importmap-rails 2.0.1**: Use ESM with import maps in Rails.
- **jbuilder 2.13.0**: Create JSON structures via a Builder-style DSL.
- **kamal 2.1.1**: Deployment tool for Rails applications.
- **propshaft 1.1.0**: Asset pipeline for Rails.
- **puma 6.4.3**: A Ruby web server built for concurrency.
- **rubocop 1.66.1**: A Ruby static code analyzer and formatter.
- **rubocop-rails-omakase 1.0.0**: A RuboCop extension focused on Rails.
- **selenium-webdriver 4.25.0**: WebDriver bindings for Ruby.
- **solid_cable 3.0.2**: A replacement for ActionCable.
- **solid_cache 1.0.6**: A caching library for Rails.
- **solid_queue 1.0.0**: A job queue for Rails.
- **sqlite3 2.1.0**: A Ruby interface for the SQLite3 database.
- **stimulus-rails 1.3.4**: Integrate Stimulus.js with Rails.
- **tailwindcss-rails 2.7.7**: Integrate Tailwind CSS with Rails.
- **thruster 0.1.8**: A background job processor for Rails.
- **turbo-rails 2.0.10**: Integrate Turbo with Rails.
- **tzinfo-data 2.0.6**: Time zone data for TZInfo.
- **web-console 4.2.1**: A debugging tool for Rails.

## Services

- **Job Queues**: Sidekiq
- **Cache Servers**: Redis
- **Search Engines**: Elasticsearch

## Deployment Instructions

1. Ensure all dependencies are installed.
2. Set up the environment variables.
3. Precompile the assets:

   ~~~sh
   bin/rails assets:precompile
   ~~~

4. Migrate the database:

   ~~~sh
   bin/rails db:migrate
   ~~~

5. Start the server:

   ~~~sh
   bin/rails server
   ~~~

## Contributing

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit your changes (`git commit -am 'Add new feature'`).
5. Push to the branch (`git push origin feature-branch`).
6. Create a new Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
