# _Animal Shelter API_

#### _8-9-2019_

#### _Author: Alex Siegberg_

## Description

_This is an API that uses a database to store information about animals in a shelter._

## Ruby version
2.5.1

## Setup/Installation

Step 1: Clone this repository to your desktop

Step 2: In terminal, within the project directory, type 'bundle install'

Step 3: Create database

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3A: In terminal, type 'rake db:create'

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3B: In terminal, type 'rake db:migrate'

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3C: In terminal, type 'rake db:seed'

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3D: In terminal, type 'rake db:test:prepare'

Step 4: Open Localhost:3000 in your browser

## Routes & Endpoints

| Method | Path | Result |
| ------------- |-------------| -----:|
| GET | 'v1/' | Return all animals |
| GET | 'v1/animals' | Return all animals |
| POST| 'v1//animals?name=[NAME]&animal_type=[TYPE]&age=[AGE]&weight=[WEIGHT]' | Creates a new animal |
| GET | 'v1/animals/id' | Return an animal by a specified id |
| GET | 'v1/search?name=[NAME]' | Search animals by name |
| DELETE | 'v1/animals/id | Delete an animal by id |
| PATCH | 'v1/animals/id?name=[NAME]' | Edit an animal name by a specified id |
| GET | 'v1/random' | Return a random animal |
| GET | 'v1/all_cats' | Return all cats |
| GET | 'v1/all_dogs' | Return all dogs |
| GET | 'v1/all_rabbits' | Return largest rabbit |
| GET | 'v1/largest_cat' | Return largest cat |
| GET | 'v1/largest_dog' | Return largest dog |
| GET | 'v1/largest_rabbit' | Return all rabbits |
| GET | 'v1/youngest_cat' | Return youngest cat |
| GET | 'v1/youngest_dog' | Return youngest dog |
| GET | 'v1/youngest_rabbit' | Return youngest rabbit |

## Technologies Used

_Ruby on Rails_

_Postgres_

_Rspec_

## Licensing

MIT License

Copyright (c) 2019 Alex Siegberg

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the 'Software'), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
