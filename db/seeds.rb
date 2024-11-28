# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


student = Student.create(
  first_name: 'Chandrakant',
  last_name: 'Arya',
  email: 'chandra@gmail.com'
)

# It will do the same work..
# student = Student.new(
#   first_name: 'Chandrakant',
#   last_name: 'Arya',
#   email: 'chandra@gmail.com'
# )

# student.save

20.times do |i|
  puts "Creating Student #{i+1}"
  Student.create(
    first_name: "Student #{i+1}",
    last_name: "Lname #{i+1}",
    email: "Student#{i+1}@bootcamp.com"
  )
end
 
Student.all.each do |student|
  student.blogs.create(title: "Dummy blog for student #{student.id}", content: "Custom content pending")
  student.blogs.create(title: "Dummy blog for student #{student.id}", content: "Custom content pending")
end

Course.create(name: 'Ruby on rails bootcamp', description:'pending')
Course.create(name: 'ReactJs bootcamp', description:'pending')
Course.create(name: 'Angular bootcamp', description:'pending')
Course.create(name: 'NodeJs bootcamp', description:'pending')
Course.create(name: 'java bootcamp', description:'pending')
Course.create(name: 'Python bootcamp', description:'pending')