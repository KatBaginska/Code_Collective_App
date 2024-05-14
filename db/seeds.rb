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
womenrock = User.create(username: "Womenrock", email: "womenrock@gmail.com", first_name: "Womenrock", last_name: "ltd", password: "123456")
thepythongroup = User.create(username: "Thepythongroup", email: "thepythongroup@gmail.com", first_name: "Thepythongroup", last_name: "ltd", password: "123456")
generalassembly = User.create(username: "Generalassembly", email: "generalassembley@gmail.com", first_name: "Generalassembly", last_name: "ltd", password: "123456")


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

file = URI.open("https://lh3.googleusercontent.com/proxy/KqyQU9CwrbewnKZJGWXywIZWSghMU02BS5jdCYuYWoZ_DM-O6jiYh-5uOKR74ptFD64uBryo4s4BTBEm0IRp1140EY7QaIthIA0qleelUVGntPf6x7kE8OuK")
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
  location: "SR2, Runway East, 1 Victoria Street, Bristol, BS1 6AA",
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

