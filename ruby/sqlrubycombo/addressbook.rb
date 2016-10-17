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

delete_item_cmd = <<-SQL
  DELETE FROM address_book (name) WHERE name = ?
SQL


def insert_into(db, name, address, phone)
  db.execute(insert_item_cmd, name, address, phone)
end

def delete_from(db, name)
  db.execute(delete_item_cmd, name)
  
end

db.execute(create_table_cmd)


#user interface
puts "Welcome to your address book"
puts "Enter a name you would like to add:"
name = gets.chomp
puts "Enter in their address:"
address = gets.chomp
puts "Enter in their phone number:"
phone = gets.chomp

insert_into(db, name, address, phone)
puts "Enter a name you would like remove from your address book:"
name = gets.chomp
delete_from(db, name)
puts "Here is your address book"
db.execute("SELECT * FROM address_book")