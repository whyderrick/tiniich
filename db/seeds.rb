# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.find_or_create_by(email: "whyderrick@gmail.com") do |user|
  user.assign_attributes(
    first_name: "Derrick",
    last_name: "Carr",
    password: ENV.fetch("USER_PASSWORD", "password1"),
  )
end
