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

file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1709831209/zbmwwz2glonos4sxxgut.jpg")
kate = User.create(username: "Kate", email: "kate@gmail.com", first_name: "Kate", last_name: "Coates", password: "123456")
kate.photo.attach(io: file, filename: "image.jpg", content_type: "image/jpg")

file = URI.open("https://avatars.githubusercontent.com/u/137444157?v=4")
kat = User.create(username: "Kat", email: "kat@gmail.com", first_name: "Kat", last_name: "Baginska", password: "123456")
kat.photo.attach(io: file, filename: "image.jpg", content_type: "image/jpg")

file = URI.open("https://avatars.githubusercontent.com/u/162709529?v=4")
koni = User.create(username: "Koni", email: "koni@gmail.com", first_name: "Koni", last_name: "Borowiak", password: "123456")
koni.photo.attach(io: file, filename: "image.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1711361107/s6tpxcvqkupt4j7dndze.jpg")
alper = User.create(username: "Alper", email: "alper@gmail.com", first_name: "Alper", last_name: "Goldenberg", password: "123456")
alper.photo.attach(io: file, filename: "image.jpg", content_type: "image/jpg")

file = URI.open("https://pbs.twimg.com/profile_images/1258007290940022784/OGFVpWLz_400x400.png")
codebar = User.create(username: "Codebar", email: "codebar@codebar.com", first_name: "Codebar", last_name: "ltd", password: "123456")
codebar.photo.attach(io: file, filename: "image.png", content_type: "image/png")

file = URI.open("https://cdn.sourceflow.co.uk/va8vj2cd566y6ut4d2y67hnxsveg")
womenrock = User.create(username: "Women Rock", email: "womenrock@gmail.com", first_name: "Womenrock", last_name: "ltd", password: "123456")
womenrock.photo.attach(io: file, filename: "image.jpg", content_type: "image/jpg")

file = URI.open("https://images.datacamp.com/image/upload/f_auto,q_auto:best/v1603718736/Why_Your_Company_Needs_Python_for_Business_Analytics_xzzles.png")
thepythongroup = User.create(username: "The Python Group", email: "thepythongroup@gmail.com", first_name: "Thepythongroup", last_name: "ltd", password: "123456")
thepythongroup.photo.attach(io: file, filename: "image.png", content_type: "image/png")

file = URI.open("https://www.pngitem.com/pimgs/m/20-207776_transparent-general-assembly-logo-hd-png-download.png")
generalassembly = User.create(username: "General Assembly", email: "generalassembley@gmail.com", first_name: "Generalassembly", last_name: "ltd", password: "123456")
generalassembly.photo.attach(io: file, filename: "image.png", content_type: "image/png")


puts "Created #{User.count} users"


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
  location: "Kiln House, Norwich, NR2 1DX",
  user: codebar,
  keywords: "UX design, Web development, User experience"
)
event.photos.attach(io: file, filename: "image.png", content_type: "image/png")
event.photos.attach(io: file_1, filename: "image.jpg", content_type: "image/jpg")

event.save

file = URI.open("https://thedigitalhacker.com/wp-content/uploads/2020/05/laprop-for-mba.jpg")

file_1 = URI.open("https://f2.codeday.org/d5pti1xheuyu/6waD5CFOnOKwJX8UqA73wL/c3ba8367d0dd41f708c1ce507f8a9571/341020_10150416906821332_1420802082_o.jpg")

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

file = URI.open("https://static.standard.co.uk/s3fs-public/thumbnails/image/2019/09/09/14/cowomen-zkhksse8tuu-unsplash-1.jpg?crop=8:5,smart&quality=75&auto=webp&width=1024")
file_1 = URI.open("https://web-static.wrike.com/blog/content/uploads/2018/03/Women_in_Tech_Know_Their_Worth_Its_Time-Everyone_Else_Does_Too_1.jpg?av=461f21a4d35a6149d69602c26a6400d5")

event = Event.new(name: "Coding Workshop at SR2",
  description: "Women Rock is a voice for diversity in tech. Attend our workshops to learn programming in a safe and supportive environment at your own pace, or to share your knowledge and coach our students. Women Rock was created by SR2 co-founder and all-round positive vibe advocate Alicia and exists to help transform the industry and create a positive movement! Please join us for an in-person workshop hosted at Runway East (1 Victoria Street, Bristol, BS1 6AA) There will be someone to let you in at reception and please make your way to floor 1. The building is fully accessible. Any issues on the evening please message us on slack. Food and drink will be provided with vegan, veggie and GF options available.",
  date: Date.new(2024, 6, 6),
  start_time: DateTime.new(2024, 6, 6, 18),
  end_time: DateTime.new(2024, 6, 6, 21),
  location: "1 Victoria Street, Bristol, BS1 6AA",
  user: womenrock,
  keywords: "coding, programming, Women in tech"
)
event.photos.attach(io: file, filename: "image.jpg", content_type: "image/jpg")
event.photos.attach(io: file_1, filename: "image.jpg", content_type: "image/jpg")

event.save

file = URI.open("https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F719372359%2F269598256309%2F1%2Foriginal.20240314-122707?w=512&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C164%2C2000%2C1000&s=436a5355b1ea6b4ed21ad0c644c7bc99")
file_1 = URI.open("https://i2-prod.manchestereveningnews.co.uk/incoming/article18569554.ece/ALTERNATES/s1200/0_DSC_6284-1-copy-3.jpg")

event = Event.new(name: "Code with HTML, CSS & JavaScript",
  description: "Are you thinking about a career in Software Engineering, but don't know where to start? This free, 2-hour workshop will give you a solid understanding of what it takes to be a Web Developer, and how to write your first line of code.
  In this beginner-friendly session, you will learn from an expert instructor with real world experience. By the end of the session, you will: - Have a better understanding of the coding world and where web development fits in - Become familiar with the basic fundamentals of HTML, CSS and Javascript - Know how to start building a front-end web page on repl.it.",
  date: Date.new(2024, 7, 19),
  start_time: DateTime.new(2024, 7, 19, 19),
  end_time: DateTime.new(2024, 7, 19, 21),
  location: "Margaret Powell House, Midsummer Boulevard, Milton Keynes, MK9 3BN",
  user: generalassembly,
  keywords: "HTML, CSS, JavaScript, coding, programming"
)
event.photos.attach(io: file, filename: "image.jpg", content_type: "image/jpg")
event.photos.attach(io: file_1, filename: "image.jpg", content_type: "image/jpg")

event.save

# file = URI.open("https://secure.meetupstatic.com/photos/event/a/7/d/1/600_518682961.webp?w=384")
file = URI.open("https://bootcamprankings.com/wp-content/uploads/2021/08/how-to-learn-how-to-code-for-free.jpg")

event = Event.new(name: "Coffee & Code - Saturday",
  description: "Bring your laptop, get a brew and start working on your project in good company. This is an event for Saturday morning early-birds who like a productive and social start to the weekend. Please note this is a general-purpose tech meet-up. Feel free to join, if you are:- Working on a project / learning about a topic that is tech or tech-adjacent- Keen on getting help / input from, or just socialising with other tech-folk. Nice and respectful of everyone present, regardless of background, chosen tech-stack or current skill-level.",
  date: Date.new(2024, 6, 22),
  start_time: DateTime.new(2024, 6, 22, 9),
  end_time: DateTime.new(2024, 7, 19, 11),
  location: "Foyles, 107 Charing Cross Road, London, WC2H 0EB",
  user: kate,
  keywords: "connect in person, HTML, CSS, JavaScript, Ruby, coding, programming"
)
event.photos.attach(io: file, filename: "image.jpg", content_type: "image/jpg")
# event.photos.attach(io: file_1, filename: "image.jpg", content_type: "image/jpg")

event.save

file = URI.open("https://us.v-cdn.net/6036147/uploads/S78M2IL9SK3Z/1-1200x675.jpg")
file_1 = URI.open("https://media.sciencephoto.com/f0/33/49/96/f0334996-800px-wm.jpg")

event = Event.new(name: "Ruby & Brunch",
  description: "Whether you are a complete novice or a programming master there is always more to learn. With Ruby & Brunch you can read that great programming book, work on that revolutionary project, or learn that cool new language with good food, a drink and fellow programmers to talk through ideas. We range from Ruby users through to HTML, CSS and JavaScript, whatever you want to talk about we are here to connect with you.",
  date: Date.new(2024, 6, 22),
  start_time: DateTime.new(2024, 6, 22, 9),
  end_time: DateTime.new(2024, 7, 19, 11),
  location: "Thrive, 5-7 Norfolk Street, Cambridge, CB1 2LB",
  user: koni,
  keywords: "connect in person, HTML, CSS, JavaScript, Ruby, Ruby on rails, coding, programming"
)
event.photos.attach(io: file, filename: "image.jpg", content_type: "image/jpg")
event.photos.attach(io: file_1, filename: "image.jpg", content_type: "image/jpg")

event.save

puts "Created #{Event.count} events"

puts "Created #{Booking.count} bookings"

