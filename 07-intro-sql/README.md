# Intro to SQL 🛢
## Creating tables in Sqlite Browser
1. Install the SQLite Browser if you haven't already [here](http://sqlitebrowser.org/)
2. Open the SQLite Browser and click 'File -> Open DataBase'
3. Choose the `chinook.db` file from this repo. This database is open source and maintained by Microsoft (SQL is no fun if you don't have any data)
4. Click the tab that says 'Execute SQL'. Type SQL queries in the box above. Press the play button. See the results of that query in the box below

## Creating tables from the command line
1. Create a new db `sqlite3 pet_database.db`
2. Create table
```sql
CREATE TABLE cats (
id INTEGER PRIMARY KEY,
    name TEXT, 
    age INTEGER
);
```
3. Create a .sql file
4. `sqlite3 pets_database.db < 01_create_cats_table.sql`

## Challenges 🦾

1. Write the SQL to return all of the rows in the artists table?

```SQL
SELECT * FROM artists
```

2. Write the SQL to select the artist with the name "Black Sabbath"

```SQL
SELECT * FROM artists WHERE name = "Black Sabbath"
```

3. Write the SQL to create a table named 'fans' with an auto-incrementing ID that's a primary key and a name field of type text

```sql
CREATE TABLE fans (
id INTEGER PRIMARY KEY,
    name TEXT, 
    age INTEGER
);
```

4. Write the SQL to alter the fans table to have a artist_id column type integer?

```sql

```

5. Write the SQL to add yourself as a fan of the Black Eyed Peas?

```sql

```
