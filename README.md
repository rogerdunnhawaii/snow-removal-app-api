Link to other repo (client-side)
https://github.com/rogerdunnhawaii/snow-removal-app-client

Technologies Used
1) Ruby on Rails
2) Heroku

Unsolved problems
1) Want to do many-to-many relationship

planning, development process and problem-solving strategy (see below):

## Project Idea

```md
Develop an api and website to provide a platform where customers needing snow removal and landscaping services can be matched with workers nearby who can provide these services in a cost-effective, efficienct, and high customer service manner.

I currently am in this industry.  Anyone who needs snow removal and landscaping services would use it or anyone looking to make a decent hourly wage.
```

## Write between 3-5 user stories

```md
MVP
1) I would like to be able to sign-up, sign-in, change password, sign-out.
2) I would like to be able to see all jobs associated with me as a user
3) I would like to be able to create, update, delete and get a specific job

Stretch Goals
1) As a user I would like to submit all my information and get a quote for my snow removal and landscaping wants and needs.
2) As a user I would like to submit payment and get services done in a timely manner and tasks completed in a high-quality manner with good communication
3) As a user I would like to submit my personal information so I can get paid to do snow removal and landscaping services for customers.  I would like a platform that tells me where to go when and what to do with what equipment.
4) As a user I would like to get paid within 24 hrs after completion of work and customer satisfaction of that work
```

## Plan your tables and columns

What tables will you need? What will the columns on the table be?

```md
MVP:

Customer table: Name, email, password

Job table: Customer, Worker, Price, Address, Time/Date scheduled, status(in progress, cancelled, open)

Stretch:

Customer table:  Name, email, phone, address, work requested, pictures, ideal time for service to be completed, payment information, ratings by worker

Worker table: Name, email, phone, address, bank/venmo/paypal/cash app information, availability, skillset, equipment on-hand, ratings by customer, on-time rating, reliability rating.

Jobs table:  Customer, Worker, Price, Location, Time scheduled, Scope of Work, How it will be completed, completed, in-progress, cancelled, open/active.
```

## Create an ERD (entity relationship diagram)

These are the diagrams that show how your tables are related to one another
(one to many, many to many, etc).

Include an image (or a link to image) below.
[see pictures link:](https://drive.google.com/drive/folders/1-797sDI8PbhZNjS5wJBIyHJMs7xfF8PH)

```md
MVP:
One user can see many jobs

Stretch:
Many workers could be assigned to one customer OR
Many customers could be assigned to one worker
Jobs table is how they would be linked
Many-to-many relationship


[see pictures link:](https://drive.google.com/drive/folders/1-797sDI8PbhZNjS5wJBIyHJMs7xfF8PH)
```

## Routing

What routes will you need to make the proper request to your API?

```md
MVP:
1) Get all Jobs
2) Get one job
3) create, delete, update job
4) get all Users
5) get one job
6) create, delete, update user

Stretch:
get all customers
get all workers
get all available workers
get all customers who haven't paid payment
get all customers who have paid
get all customers with outstanding job requests
get all workers currently on a Jobs
get all workers within a certain mile radius from a customer address
get all customers within a certain mile radius from a worker
get all info on a certain customer
get all info on a certain worker
get all info on a certain job
get all outstanding jobs (active)
get all cancelled jobs
get all completed jobs
```

## Wireframes

Please create a wireframe of your planned front end.

```md
[see pictures link:](https://drive.google.com/drive/folders/1-797sDI8PbhZNjS5wJBIyHJMs7xfF8PH)

```

## Timetable

Write a basic timetable for yourself, you don't have to stick to it but it
helps to go in with a plan.

```md
Develop customer back end
Develop jobs back end
Develop customer front end
Develop jobs front end

Work on Stretch goals:
Develop Job-specific process/issues
```

Rails[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# rails-api-template

A template for starting projects with `rails-api`. Includes authentication.

At the beginning of each cohort, update the versions in [`Gemfile`](Gemfile).

## Prerequisites

-   [rails-api-examples-walkthrough](https://git.generalassemb.ly/ga-wdi-boston/rails-api-examples-walkthrough)

## Dependencies

Install with `bundle install`.

-   [`rails-api`](https://github.com/rails-api/rails-api)
-   [`rails`](https://github.com/rails/rails)
-   [`active_model_serializers`](https://github.com/rails-api/active_model_serializers)
-   [`ruby`](https://www.ruby-lang.org/en/)
-   [`postgres`](http://www.postgresql.org)

## Installation

### Download Template:
1.  [Download](../../archive/master.zip) this template.
1.  Unzip and rename the template directory (`unzip ~/Downloads/rails-api-template-master.zip`)
1.  Move into the new project and `git init`.

### Customize Template:
1.  Empty [`README.md`](README.md) and fill with your own content.
1.  Rename your app module in `config/application.rb` (change
    `RailsApiTemplate`).
1.  Rename your project database in `config/database.yml` (change
    `'rails-api-template'`).

### Setup Environment:
1.  Install dependencies with `bundle install`.
1.  `git add` and `git commit` your changes.
1.  Create a `.env` for sensitive settings (`touch .env`).
1.  Generate new `development` and `test` secrets (`bundle exec rails secret`).
1.  Store them in `.env` with keys `SECRET_KEY_BASE_<DEVELOPMENT|TEST>`
    respectively.
1.  In order to make requests to your deployed API, you will need to set
    `SECRET_KEY_BASE` in the environment of the production API (for example, using `heroku config:set` or the Heroku dashboard).
1.  In order to make requests from your deployed client application, you will
    need to set `CLIENT_ORIGIN` in the environment of the production API (for example, `heroku config:set CLIENT_ORIGIN=https://<github-username>.github.io`).
    See more about deploying to heroku [rails-heroku-setup-guide](https://git.generalassemb.ly/ga-wdi-boston/rails-heroku-setup-guide)

### Setup your database:
    - bin/rails db:drop (if it already exists)
    - bin/rails db:create
    - bin/rails db:migrate
    - bin/rails db:seed
    - bin/rails db:examples

  Note: Remember to follow the same commands when setting up your deployed database!

### Run your server!
1. Run the API server with `bin/rails server` or `bundle exec rails server`.

## Structure

This template follows the standard project structure in Rails.

`curl` command scripts are stored in [`curl-scripts`](curl-scripts) with names that
correspond to API actions.

User authentication is built-in.

## Tasks

Developers should run these often!

-   `bin/rails routes` lists the endpoints available in your API.
-   `bin/rspec spec` runs automated tests.
-   `bin/rails console` opens a REPL that pre-loads the API.
-   `bin/rails db` opens your database client and loads the correct database.
-   `bin/rails server` starts the API.
-   `curl-scripts/*.sh` run various `curl` commands to test the API. See below.

## API

Use this as the basis for your own API documentation. Add a new third-level
heading for your custom entities, and follow the pattern provided for the
built-in user authentication documentation.

Scripts are included in [`curl-scripts`](curl-scripts) to test built-in actions. Add your
own scripts to test your custom API. As an alternative, you can write automated
tests in RSpec to test your API.

### Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password`     | `users#changepw`  |
| DELETE | `/sign-out`        | `users#signout`   |

#### POST /sign-up

Request:

```sh
curl http://localhost:4741/sign-up \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'
```

```sh
EMAIL=ava@bob.com PASSWORD=hannah curl-scripts/auth/sign-up.sh
```

Response:

```md
HTTP/1.1 201 Created
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "ava@bob.com"
  }
}
```

#### POST /sign-in

Request:

```sh
curl http://localhost:4741/sign-in \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'
```

```sh
EMAIL=ava@bob.com PASSWORD=hannah curl-scripts/auth/sign-in.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "ava@bob.com",
    "token": "BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f"
  }
}
```

#### PATCH /change-password

Request:

```sh
curl --include --request PATCH "http://localhost:4741/change-password" \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'
```

```sh
OLDPW='hannah' NEWPW='elle' TOKEN='BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f' sh curl-scripts/auth/change-password.sh
```

Response:

```md
HTTP/1.1 204 No Content
```

#### DELETE /sign-out

Request:

```sh
curl http://localhost:4741/sign-out \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"
```

```sh
TOKEN='BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f' sh curl-scripts/auth/sign-out.sh
```

Response:

```md
HTTP/1.1 204 No Content
```

### Users

| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/users`    | `users#index`     |
| GET  | `/users/1`  | `users#show`      |
| PATCH| `/users/1`  | `users#update`    |

#### GET /users

Request:

```sh
curl http://localhost:4741/users \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
```

```sh
TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f curl-scripts/users.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "users": [
    {
      "id": 2,
      "email": "bob@ava.com"
    },
    {
      "id": 1,
      "email": "ava@bob.com"
    }
  ]
}
```

#### GET /users/:id

Request:

```sh
curl --include --request GET http://localhost:4741/users/$ID \
  --header "Authorization: Token token=$TOKEN"
```

```sh
ID=2 TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f curl-scripts/user.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 2,
    "email": "bob@ava.com"
  }
}
```

#### PATCH /users/:id

Request:

```sh
curl "http://localhost:4741/users/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "user": {
      "email": "'"${EMAIL}"'"
    }
  }'
```

```sh
ID=1 TOKEN="BAhJIiU1NGNlYjRmMjBhM2NkZTZiNzk1MGNiYmZiYWMyY2U4MwY6BkVG--ddb1e16af0e05921aa56d771e4a2f816f2a1d46e"
EMAIL=mike@m
sh curl-scripts/users/user-update.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{"user":{"id":1,"email":"mike@m"}}
```

### Reset Database without dropping

This is not a task developers should run often, but it is sometimes necessary.

**locally**

```sh
bin/rails db:migrate VERSION=0
bin/rails db:migrate db:seed db:examples
```

**heroku**

```sh
heroku run rails db:migrate VERSION=0
heroku run rails db:migrate db:seed db:examples
```

## Additional Resources
- [rails-heroku-setup-guide](https://git.generalassemb.ly/ga-wdi-boston/rails-heroku-setup-guide)
- http://guides.rubyonrails.org/api_app.html
- https://blog.codeship.com/building-a-json-api-with-rails-5/

## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
