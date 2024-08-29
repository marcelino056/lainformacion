# README
## Dependencies
 * Ruby 3.3.3
 * Rails 7
 * Postgre SQL 14

## Database
 - Keeping track of changes for all the tables with `paper trail`
 - Soft delete with `paranoid`

## Setup
  - Install dependencies
  - Clone the repo
  - Set Environment variables
  - Run `bundle install`
  - Create database
    - Run `rails db:create`
    - Run `rails db:migrate`
    - Run `rails db:seed`
  - Or create it with a Dump
  - To run the project run `rails s -b 0.0.0.0`

## Usage
  - Admin panel is using RailsAdmin, the path is `/admin`, you'll need an admin user to join, if you run the seeds the user will be:
    ```
      email:    admin@test.com
      password: 123456789
    ```
