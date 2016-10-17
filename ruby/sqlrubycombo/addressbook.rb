require 'slite3'

#create database to store addresses
db = SQLite3::Database.new("address_book.db")
db.results_as_hash = true

#create a table in the database
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXIXTS address_book (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255),
    phone INT
  )
SQL

insert_item_cmd = <<-SQL
  INSERT INTO address_book (name, address, phone) VALUES (?, ?, ?)
SQL

def insert_into(name address, phone)
  
end

db.execute(create_table_cmd)


#user interface
puts "Welcome to your address book"
