# README

[![Build Status](https://semaphoreci.com/api/v1/andela-oosiname/ballotmopol/branches/master/badge.svg)](https://semaphoreci.com/andela-oosiname/ballotmopol)

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

create a report

 - POST /v1/reports

 - {
      "report":{
          "summary":"vel est donec odio justo sollicitudin ut suscipit a feugiat et eros",
          "state_id":28,
          "election_id":2,
          "images_attributes":
          [
            {
              "link":"http://dummyimage.com/186x222.bmp/cc0000/ffffff"

            },
            {
              "link":"http://dummyimage.com/116x207.bmp/ff4444/ffffff"
            }
          ]

        }
    }
