# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
Ruby version being used in the API is:
2.5.1

* Schema 

Bytes -
Body:text
user-id:integer 

Comments - 
body:text 
user_id:integer 


Users - 
name:string 
email:string 
username:string 

All data is sent and recieved as JSON 

You can access this data by using Postman. 

* EndPoints/Routes 

- GET localhost:3000/api/v1/bytes 

  -This will return all "bytes" 

- GET localhost:3000/api/v1/bytes/:id

  -This will return a individual "byte" 

- POST localhost:3000/api/v1/bytes

  -You can post a new "byte" using this route.
    -example 
      {
	      "byte":{
	      	"body": "Eye of the Tiger",
		      "user_id": 5
	      }
      }

  You can only post a new byte with authorization by creating an account. 

- DELETE localhost:3000/api/v1/bytes/:id

  -This will delete a "byte". 
  -You must have authorization to delete a byte (creating an account or signing into an account will give you authorization.) 
  -You will only have authorization to delete "bytes" that you have created. 

- GET localhost:3000/api/v1/bytes/:id/comments 

  -This will return all of the comments associated with one "byte". 
  -You must have authorization to create a comment for a "byte"(signed in or create an account).

- POST localhost:3000/api/v1/bytes/:id/comments 

  -This will create a comments for an accociated "byte"
  -You must have authorization to create a comment. 

- DELETE localhost:3000/api/v1/bytes/:id/comments/:id 

  -This will delete a particular comment accociated with a particular "byte". 
  -You must have authorization to delete a comment.







* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
