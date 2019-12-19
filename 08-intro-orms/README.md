# Intro to ORMs (Object Relational Mappers) 🍬

## Goals 🧘🏿

- [ ] Build a database 🏗
- [ ] Review SQL queries 🛢
- [ ] Define CRUD 🎨
- [ ] Define ORM 🍬
- [ ] Create an ORM 🍭

## Database and SQL Review with Books and Authors 🏗

*What does the design philosophy of* Domain Modeling *look like in a relational database?*

**1. Create a *books* table and an *authors* table. Books should have a *title* and authors should have a *name*.**

*books table*
| id | title         | author_id |
| --- | --- | --- |
| 1  | enders game   | 1 |
| 2  | harry potter  | 2 |
| 3  | enders shadow | 1 |

*authors table*
id | name |
| --- | --- |
1  | orrison scott |
2  | jk rowling    |


**2. Write the SQL to find all books written by a certain author given the author's id.**

```SQL
SELECT * FROM books WHERE author_id = 1
```

**3. Create a *books* table and an *authors* table where each author can have one or multiple books. Books should have a *title* and authors should have a *name*.**

*books table*
| id | title         |
| --- | --- | --- |
| 1  | enders game   |
| 2  | harry potter  |
| 3  | enders shadow |

*book_authors*
| id | book_id | author_id |
| --- | --- | --- |
| 1 | 3 | 1 |
| 2 | 2 | 2 |
| 3 | 3 | 4 |
| 4 | 2 | 1 |

*authors table*
id | name |
| --- | --- |
1  | orrison scott |
2  | jk rowling    |


## CRUD 🎨

*What are the four ways we can interact with data? What might this interaction look like in SQL? In Ruby?*

### Create
#### SQL
- `CREATE TABLE books (id INTEGER PRIMARY KEY, title TEXT);`
- `INSERT INTO books (title) VALUES ("The Three-Body Problem");`
#### Ruby
- `Book.new`

### Read
#### SQL
- `SELECT * FROM books;`
- `SELECT * FROM books WHERE id = 5 LIMIT 1;`
#### Ruby
- `Book.all`
- `Book.find(5)`
- `Book.find_by(id: 5)`

### Update
#### SQL
- `UPDATE books SET title = 'Ana Karenina' WHERE id = 5`
#### Ruby
- `Book#update({'title' => 'Ana Karenina'})`

### Delete
#### SQL
- `DELETE FROM books WHERE id = 3;`
#### Ruby
- `Book#delete`


## The Active Record Pattern 🧩

- The Active Record Pattern is an approach to accessing data in a database using object-oriented programming.
- A **database** corresponds to a **domain**.
- Each **table** in the database corresponds to a Ruby **class** (model).
- Each **row** in a table corresponds to an **instance** of that model.
- Each **column** in our table corresponds to an **attribute** of that model.

## DO THE THING 🍭

### Why? 🤔

*Problem*: Data is *not persistent*. Ruby stores data in memory. 
*Solution*: Relational database saved, accessed, and altered in `.db` file.

### Examine structure and tooling 🛠

- `run.rb` file in `./bin`
- Outsourced reqs in `./config/environment.rb`
    - *What is namespacing of SQLite3?*
    - SQLite3 module with Database class
- Store database file in `./db/database_name.db`
- `./lib` contains classes
- Gemfile(.lock) helps manage dependencies
    - Bundler is a gem which manages other gems
    - `bundle init` creates a Gemfile
    - `bundle install` installs gems
    - Gemfile lists required gems and source
    - Gemfile.lock records installed gems *and* dependencies
- Rakefile
    - Rake is a task runner!
    - `rake -T` shows tasks
    - `rake task_name` runs task
    - `rake console` better than `irb` because it contains program information

### Wrap SQL in Ruby 🍬

- Guidelines
    - Execute SQL command in method
    - Return Object instead of Enumerable
- Create methods
    - `@id` attribute
    - `#save` a tweet
- Helper methods
    - `#in_db?`
    - `#set_instance_id`
- Read methods
    - Get `.all` tweets!
    - Return class instances instead of hashes from database
    - `.find_by_id`
- Update method
    - `#update` with object attribute
    - ActiveRecord gem will help with `#save` management
- Delete
    - `.delete_all` from array, db
    - `#delete` 
- ***WARNING*** SQL Injection!
    - [Little Bobby Tables](https://xkcd.com/327/)
    - Parameterize SQL calls to defend!

### For your edification... 🦜

- [ ] **A tweet belongs to a user and has some message content - must have user_id**
- [ ] **The belongs_to must have a user_id on it**
- [ ] **A user has a username, and has many tweets**
- [ ] **A tweet can have many tags and a tag can have many tweets**

Still hungry? [Watch Avi Flombaum build a Metaprogrammed Abstract ORM.](https://www.youtube.com/watch?time_continue=2&v=hts7TjpPw-8)
