# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create(:first_name => "Rick", :last_name => "something")
Student.create(:first_name => "Morty", :last_name => "Smith")


SchoolClass.create(:title => "Math", :room_number => 3)
SchoolClass.create(:title => "History", :room_number => 2)