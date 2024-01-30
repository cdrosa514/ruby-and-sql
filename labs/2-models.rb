# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.
#initialize an empty row (aka hash)
salesperson = Salesperson.new

# puts salesperson.inspect

salesperson ["first_name"] = "Christian"
salesperson ["last_name"] = "De Rosa"
salesperson ["email"] = "christian@gmail.com"
salesperson.save

salesperson = Salesperson.new

# puts salesperson.inspect

salesperson ["first_name"] = "Ashlie"
salesperson ["last_name"] = "Williams"
salesperson ["email"] = "ashlie@gmail.com"
salesperson.save

# 3. write code to display how many salespeople rows are in the database

puts "There are #{Salesperson.all.count} salespeople"

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

christian = Salesperson.find_by({"first_name" => "Christian", "last_name" => "De Rosa"})
christian["first_name"] = "Chris"
christian.save

# CHALLENGE:
# 5. write code to display each salesperson's full name

puts "There are #{Salesperson.all.count} salespeople"

salespeople = Salesperson.all

for salesperson in salespeople
    first_name = salesperson ["first_name"]
    last_name = salespeople ["last_name"]
    # puts ....
end

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
