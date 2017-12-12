# Don't Panic Travel

### By L. Devin MacKrell

## Description

_This is an intergalactic travel site based around the popular travel guide: ```The Hitchhiker's Guide to the Galaxy```._

## Installation and Setup

To install on your own machine, follow the instructions below:

* Clone this repository.
* Run the following commands in the project root directory:
  ```
  bundle update
  rake db:setup
  rails db:seed
  rails s
  ```
* Open ```localhost:3000``` in your web browser
* **To give an account admin privileges:**
  * In the project root run ```rails c```
  * Then run:
    ```ruby
    User.find_by(email: "[account email address]").update(admin: true)
    ```
  * The account will now have admin access to the app.

## Specifications

** Users  
  **  All users may GET reviews about travel destinations. INDEX
  ** All users may POST reviews about travel destinations. NEW
  ** All users can GET reviews by location or planet. SEARCH
  ** All users can see most popular travel destinations by number of reviews. SORT by REVIEW #s
  ** All users can see most popular travel destinations by overall rating. RATING
  ** Users can look up random destinations for fun. RANDOM
** Current_Users
  ** Users can PUT and DELETE reviews that they wrote. (REQUIRE USER_NAME --> Issue with faker reviews?)


# Things I need:

* Destination
  * Index and maybe show.
* Review
  * Structure
    * Author
    * Destination
    * Rating
    * Content
  * User
    * All Users can
      * Read reviews about destinations (index)
      * Sort destinations by number of reviews
      * Sort destinations by ratings
      * Search destinations by planet
      * Look up random destinations
    * Authentication and Authorization.
      * Users need to be logged in to leave (POST) a review.
      * Users only update (PUT) and delete (DELETE) their own reviews.
    
* Additional TODO (pick at least 2)
  * Token-Based Authentication and Authorization
  * Serialization
  * API Versioning
  * Using Swagger for Documentation
  * Paginating an API
  * Batching API calls
  * Rate Limiting

<!--
## Known Bugs:

* _When updating a product to "Featured," if there are no other -->

## Support and contact details

_Please contact [ldmackrell@gmail.com](mailto:ldmackrell@gmail.com) with questions, comments, or issues._

## Technologies Used

* Ruby
* Rails
* Bootstrap
* Devise

### License

Copyright (c) 2017 **L. Devin MacKrell**

*This software is licensed under the MIT license.*
