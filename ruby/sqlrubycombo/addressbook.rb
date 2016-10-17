require 'sqlite3'

#create database to store addresses
db = SQLite3::Database.new("address_book.db")
db.results_as_hash = true

#create a table in the database
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS address_book (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255),
    phone INT
  )
SQL


def insert_into(db, name, address, phone)
  db.execute("INSERT INTO address_book (name, address, phone) VALUES (?, ?, ?)", [name, address, phone])
end

def delete_from(db, name)
  db.execute("DELETE FROM address_book WHERE name = ?", [name])
  
end

db.execute(create_table_cmd)

input = ""

#user interface
puts "Welcome to your address book"
until input == "q"
  puts "1 Add a new entry"
  puts "2 Delete an entry"
  puts "3 View address book"
  puts "Type q to exit"
  input = gets.chomp
  if input == "1"
    puts "Enter a name you would like to add:"
    name = gets.chomp
    puts "Enter in their address:"
    address = gets.chomp
    puts "Enter in their phone number:"
    phone = gets.chomp
    insert_into(db, name, address, phone)
  elsif input == "2"
    puts "Enter a name you would like remove from your address book:"
    name = gets.chomp
    delete_from(db, name)
  elsif input == "3"
    puts "Here is your address book"
    output = db.execute("SELECT * FROM address_book")
    output.each do |person|
      puts "Name: #{person['name']}" 
      puts "Address: #{person['address']}" 
      puts "Phone: #{person['phone']}"
    end
  end
  puts "\n"
end
