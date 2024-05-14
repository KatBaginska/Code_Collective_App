# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "open-uri"

puts "Cleaning up the db"
Booking.destroy_all
Event.destroy_all
User.destroy_all

puts "Creating users"
kate = User.create(username: "Kate", email: "kate@gmail.com", first_name: "Kate", last_name: "Coates", password: "123456")
kat = User.create(username: "Kate", email: "kat@gmail.com", first_name: "Kat", last_name: "Baginska", password: "123456")
koni = User.create(username: "Kate", email: "koni@gmail.com", first_name: "Koni", last_name: "Borowiak", password: "123456")
alper = User.create(username: "Alper", email: "alper@gmail.com", first_name: "Alper", last_name: "Goldenberg", password: "123456")


puts "Creating events"
file = URI.open("https://d1xw84ija6gjgy.cloudfront.net/production/0d73a25092e5c1c9769a9f3255caa65a/conversions/HD.jpg")

event = Event.new(name: "Introduction to User Experience Design",
  description: "Whether you've been a developer for years or are just starting out, when you are coding you make micro decisions all the time that can effect the user's experience.
  With this interactive workshop, you'll learn the 'UX cheatsheet' to help make decisions that improve a user's experience. We'll then look at using that cheatsheet to pull apart websites to understand the decisions they've made that have led to a bad user experience. If there's time, we will then put our heads together to see how we could fix those bad experiences.
  Anyone is welcome.",
  date: ""
  start_time: ,
  end_time:
  location: "Fuel Studios, Kiln House, Pottergate, Norwich, NR2 1DX",
  user: kate
  keywords: "UX design, Web development, User experience"
)
event.photos.attach(io: file, filename: "image.jpg", content_type: "image/jpg")
event.photos.attach(io: file_1, filename: "image.jpg", content_type: "image/jpg")

event.save

puts "Created #{Event.count} events"
