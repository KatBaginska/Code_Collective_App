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
kat = User.create(username: "Kat", email: "kat@gmail.com", first_name: "Kat", last_name: "Baginska", password: "123456")
koni = User.create(username: "Koni", email: "koni@gmail.com", first_name: "Koni", last_name: "Borowiak", password: "123456")
alper = User.create(username: "Alper", email: "alper@gmail.com", first_name: "Alper", last_name: "Goldenberg", password: "123456")
codebar = User.create(username: "Codebar", email: "codebar@codebar.com", first_name: "Codebar", last_name: "ltd", password: "123456")
womenrock = User.create(username: "Womenrock", email: "Womenrock@gmail.com", first_name: "Womenrock", last_name: "ltd", password: "123456")
thepythongroup = User.create(username: "thepythongroup", email: "Thepythongroup@gmail.com", first_name: "Thepythongroup", last_name: "ltd", password: "123456")


puts "Creating events"
file = URI.open("https://contentsquare.com/wp-content/uploads/2022/01/2022.01-User-Experience-Workshop-Blog-Image.png")
file_1 = URI.open("https://www.lionandmason.com/wp-content/uploads/2023/01/amelie-mourichon-wusOJ-2uY6w-unsplash.jpg")

event = Event.new(name: "Introduction to User Experience Design",
  description: "Whether you've been a developer for years or are just starting out, when you are coding you make micro decisions all the time that can effect the user's experience.
  With this interactive workshop, you'll learn the 'UX cheatsheet' to help make decisions that improve a user's experience. We'll then look at using that cheatsheet to pull apart websites to understand the decisions they've made that have led to a bad user experience. If there's time, we will then put our heads together to see how we could fix those bad experiences.
  Anyone is welcome.",
  date: Date.new(2024, 8, 2),
  start_time: DateTime.new(2024, 8, 2, 18),
  end_time: DateTime.new(2024, 8, 2, 20),
  location: "Fuel Studios, Kiln House, Pottergate, Norwich, NR2 1DX",
  user: codebar,
  keywords: "UX design, Web development, User experience"
)
event.photos.attach(io: file, filename: "image.png", content_type: "image/png")
event.photos.attach(io: file_1, filename: "image.jpg", content_type: "image/jpg")

event.save

file = URI.open("https://contentsquare.com/wp-content/uploads/2022/01/2022.01-User-Experience-Workshop-Blog-Image.png")
file_1 = URI.open("https://www.lionandmason.com/wp-content/uploads/2023/01/amelie-mourichon-wusOJ-2uY6w-unsplash.jpg")

event = Event.new(name: "An Evening of Python Coding",
  description: "Learners and complete Python novices are welcome as well as experts. If you want to start something new, please see this as an opportunity to jump start the project. If you need help with an existing coding project, bring it with you and we will have a look at it. If you want to show your complete code to someone else to test it, or if you just want to consult with python experts you are welcome.",
  date: Date.new(2024, 5, 22),
  start_time: DateTime.new(2024, 8, 2, 19),
  end_time: DateTime.new(2024, 8, 2, 21),
  location: "10 South Pl, London EC2M 7EB",
  user: thepythongroup,
  keywords: "Python, Web development"
)
event.photos.attach(io: file, filename: "image.png", content_type: "image/png")
event.photos.attach(io: file_1, filename: "image.jpg", content_type: "image/jpg")

event.save

file = URI.open("https://web-static.wrike.com/blog/content/uploads/2018/03/Women_in_Tech_Know_Their_Worth_Its_Time-Everyone_Else_Does_Too_1.jpg?av=461f21a4d35a6149d69602c26a6400d5")
file_1 = URI.open("https://static.standard.co.uk/s3fs-public/thumbnails/image/2019/09/09/14/cowomen-zkhksse8tuu-unsplash-1.jpg?crop=8:5,smart&quality=75&auto=webp&width=1024")

event = Event.new(name: "Coding Workshop at SR2",
  description: "Women Rock is a voice for diversity in tech. Attend our workshops to learn programming in a safe and supportive environment at your own pace, or to share your knowledge and coach our students. Women Rock was created by SR2 co-founder and all-round positive vibe advocate Alicia and exists to help transform the industry and create a positive movement! Please join us for an in-person workshop hosted at Runway East (1 Victoria Street, Bristol, BS1 6AA) There will be someone to let you in at reception and please make your way to floor 1. The building is fully accessible. Any issues on the evening please message us on slack. Food and drink will be provided with vegan, veggie and GF options available.",
  date: Date.new(2024, 6, 6),
  start_time: DateTime.new(2024, 6, 6, 18.30),
  end_time: DateTime.new(2024, 6, 6, 21),
  location: "SR2, Runway East, 1 Victoria Street, Bristol, BS1 6AA",
  user: womenrock,
  keywords: "coding, programming, Women in tech"
)
event.photos.attach(io: file, filename: "image.jpg", content_type: "image/jpg")
event.photos.attach(io: file_1, filename: "image.jpg", content_type: "image/jpg")

event.save

file = URI.open("https://web-static.wrike.com/blog/content/uploads/2018/03/Women_in_Tech_Know_Their_Worth_Its_Time-Everyone_Else_Does_Too_1.jpg?av=461f21a4d35a6149d69602c26a6400d5")
file_1 = URI.open("https://static.standard.co.uk/s3fs-public/thumbnails/image/2019/09/09/14/cowomen-zkhksse8tuu-unsplash-1.jpg?crop=8:5,smart&quality=75&auto=webp&width=1024")

event = Event.new(name: "Coding Workshop at SR2",
  description: "Women Rock is a voice for diversity in tech. Attend our workshops to learn programming in a safe and supportive environment at your own pace, or to share your knowledge and coach our students. Women Rock was created by SR2 co-founder and all-round positive vibe advocate Alicia and exists to help transform the industry and create a positive movement! Please join us for an in-person workshop hosted at Runway East (1 Victoria Street, Bristol, BS1 6AA) There will be someone to let you in at reception and please make your way to floor 1. The building is fully accessible. Any issues on the evening please message us on slack. Food and drink will be provided with vegan, veggie and GF options available.",
  date: Date.new(2024, 6, 6),
  start_time: DateTime.new(2024, 6, 6, 18.30),
  end_time: DateTime.new(2024, 6, 6, 21),
  location: "SR2, Runway East, 1 Victoria Street, Bristol, BS1 6AA",
  user: womenrock,
  keywords: "coding, programming, Women in tech"
)
event.photos.attach(io: file, filename: "image.jpg", content_type: "image/jpg")
event.photos.attach(io: file_1, filename: "image.jpg", content_type: "image/jpg")

event.save

puts "Created #{Event.count} events"

puts "Creating bookings"

# Generate bookings for the first event
event1 = Event.first
booking = Booking.create(event: event1, user: kate, confirmed: [true, false].sample)
booking.save

# Generate bookings for the second event
event2 = Event.second
booking = Booking.create(event: event2, user: koni, confirmed: [true, false].sample)
booking.save

# Generate bookings for the third event
event3 = Event.third
booking = Booking.create(event: event3, user: kat, confirmed: [true, false].sample)
booking.save

puts "Created #{Booking.count} bookings"
