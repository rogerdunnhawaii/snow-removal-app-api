Link to other repo (client-side)
https://github.com/rogerdunnhawaii/snow-removal-app-client

Description of what the app does and how it works:

We have a front end app called snow-removal-app-client and a back-end api called snow-removal-api hosted by heroku.  The client makes requests to the api for information.  The client allows for user authentication and form submission and manipulation of information pertaining to snow removal jobs.  The api is setup for a one-to-many relationship between users and jobs.

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
