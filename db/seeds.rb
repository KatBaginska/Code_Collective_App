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
kate = User.create(username: "Kate", email: "kate@gmail.com", first_name: "Kate", last_name: "Coates", password: "123456", bio:"I was working as an architect and a few years ago created a website profiling domestic architecture in the UK using Webflow. This peaked my interest in web development and made me want to learn how to code, it has a lot of similarities with architecture. I want to future proof my career by getting into web development as it is still a growing market whereas architecture can be hard when there is a recession on.")
kate.photo.attach(io: file, filename: "image.jpg", content_type: "image/jpg")

file = URI.open("https://avatars.githubusercontent.com/u/137444157?v=4")
kat = User.create(username: "Kat", email: "kat@gmail.com", first_name: "Kat", last_name: "Baginska", password: "123456", bio:"With a background in tech sales and fashion merchandising, I'm now transitioning into front-end development. Armed with a degree in game design and fueled by passions for design, I'm excited to merge creativity with code to craft engaging digital experiences.")
kat.photo.attach(io: file, filename: "image.jpg", content_type: "image/jpg")

file = URI.open("https://avatars.githubusercontent.com/u/162709529?v=4")
koni = User.create(username: "Koni", email: "koni@gmail.com", first_name: "Koni", last_name: "Borowiak", password: "123456", bio:"I'm a recent history of art graduate and have been interested in the tech industry for a while. I thought learning to code would be fun and valuable.")
koni.photo.attach(io: file, filename: "image.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1711361107/s6tpxcvqkupt4j7dndze.jpg")
alper = User.create(username: "Alper", email: "alper@gmail.com", first_name: "Alper", last_name: "Goldenberg", password: "123456", bio:"As a London-based professional Photographer and Art Director, I have five years of experience. I aim to learn coding and web development to expand my creative services. Additionally, I aspire to develop web applications for the arts and culture sector.")
alper.photo.attach(io: file, filename: "image.jpg", content_type: "image/jpg")

file = URI.open("https://pbs.twimg.com/profile_images/1258007290940022784/OGFVpWLz_400x400.png")
codebar = User.create(username: "Codebar", email: "codebar@codebar.com", first_name: "Codebar", last_name: "ltd", password: "123456", bio: "codebar is a charity that facilitates the growth of a diverse tech community by running free regular programming workshops for minority groups in tech. Our goal is to enable minority group members to learn programming in a safe and collaborative environment and expand their career opportunities. To achieve this we run free regular workshops, regular one-off events and try to create opportunities for our students making technology and coding more accessible.")
codebar.photo.attach(io: file, filename: "image.png", content_type: "image/png")

file = URI.open("https://cdn.sourceflow.co.uk/va8vj2cd566y6ut4d2y67hnxsveg")
womenrock = User.create(username: "Women Rock", email: "womenrock@gmail.com", first_name: "Womenrock", last_name: "ltd", password: "123456", bio: "Thanks for being here and welcome to Women Rock  a voice for diversity in tech! I am Alicia, founder of Women Rock, co-founder of SR2, founder of Technology Volunteers organiser of Codebar (phewwww) I am a positive vibe advocate, lover of constant learning, mushrooms and anything pickled, dislikes pigeons, bad manners and baked beans! Outside of all of that, I am probably best known for my handstand ability and my almost 10-year tenure as a Tech recruiter in the UK, born and bred in Bristol! ")
womenrock.photo.attach(io: file, filename: "image.jpg", content_type: "image/jpg")

file = URI.open("https://images.datacamp.com/image/upload/f_auto,q_auto:best/v1603718736/Why_Your_Company_Needs_Python_for_Business_Analytics_xzzles.png")
thepythongroup = User.create(username: "The Python Group", email: "thepythongroup@gmail.com", first_name: "Thepythongroup", last_name: "ltd", password: "123456", bio:"Great software is supported by great people, and Python is no exception. Our user base is enthusiastic and dedicated to spreading use of the language far and wide. Our community can help support the beginner, the expert, and adds to the ever-increasing open-source knowledgebase.")
thepythongroup.photo.attach(io: file, filename: "image.png", content_type: "image/png")

file = URI.open("https://www.pngitem.com/pimgs/m/20-207776_transparent-general-assembly-logo-hd-png-download.png")
generalassembly = User.create(username: "General Assembly", email: "generalassembley@gmail.com", first_name: "Generalassembly", last_name: "ltd", password: "123456", bio:"Since 2011, we have helped 100K+ alumni worldwide launch tech careers through our award-winning tech bootcamps, and hundreds of top companies build diverse, scalable tech talent pipelines. As part of the Adecco Group, we create a better world of work for all. We are all about connections. About closing the global tech skills gap and connecting tech talent with top companies across the globe. We empower learners to chart their own path and businesses to take a fresh approach to discover untapped talent. Led by industry trailblazer CEO Daniele Grassi, we continue to lead the charge for recruiting, training, and placing tech talent — shaping a future of work where everyone can thrive.")
generalassembly.photo.attach(io: file, filename: "image.png", content_type: "image/png")

file = URI.open("https://avatars.githubusercontent.com/u/91223087?v=4")
ebi = User.create(username: "Ebi", email: "ebi@gmail.com", first_name: "Ebi", last_name: "Alaibe", password: "123456", bio:"Banker turned full stack developer with the ability to learn new skills quickly and adapt to rapidly changing environments. I am eager to kickstart my web development career in a dynamic company that will expand my learning and build on my development skills.")
ebi.photo.attach(io: file, filename: "image.jpg", content_type: "image/jpg")

file = URI.open("https://secure.meetupstatic.com/photos/event/e/3/c/f/clean_520798319.webp")
creativecoding = User.create(username: "Creative Coding", email: "creativecoding@gmail.com", first_name: "Creativecoding", last_name: "ltd", password: "123456", bio:"If you build for the web, whether just for a hobby or professionally, then this meetup is designed for you. We don't have a specific agenda, but we organize monthly events where we chat about all things web.")
creativecoding.photo.attach(io: file, filename: "image.jpg", content_type: "image/jpg")

file = URI.open("https://railsgirls.com/images/railsgirls-sq.png")
railsgirlslondon = User.create(username: "Rails Girls London", email: "railsgirlslondon@gmail.com", first_name: "Railsgirlslondon", last_name: "ltd", password: "123456", bio:"Rails Girls aims to open up technology and make it more approachable for girls and women. Rails for Girls wants to empower girls and women to build the capacity and acquire the tools to conquer the last online frontier. We are a fully non-profit operation - the events are organized together with local sponsors.")
railsgirlslondon.photo.attach(io: file, filename: "image.jpg", content_type: "image/jpg")

file = URI.open("https://secure.meetupstatic.com/photos/event/2/5/4/0/clean_516549536.webp")
eastlondontechies = User.create(username: "East London Techies", email: "eastlondontechies@gmail.com", first_name: "Eastlondontechies", last_name: "ltd", password: "123456", bio:"This group is geared towards those of us living in London that are either working with IT / Software or are simply interested in technology. The goal is to offer informal meet-ups where you can:
  Meet people working in tech / aspiring to be in tech
  - Get help or input on your project(s)
  - Learn skills or help others upskill
  - Socialize.")
eastlondontechies.photo.attach(io: file, filename: "image.jpg", content_type: "image/jpg")

file = URI.open("https://pbcdn1.podbean.com/imglogo/image-logo/862611/2048.png")
javascript101 = User.create(username: "JavaScript 101", email: "javascript101@gmail.com", first_name: "JavaScript101", last_name: "ltd", password: "123456", bio:"JavaScript 101 is a diverse group of passionate developers, ranging from absolute beginners to seasoned professionals, all united by a common goal: mastering JavaScript. Our members come from various backgrounds and levels of expertise, making our community a rich resource for knowledge exchange and collaboration.")
javascript101.photo.attach(io: file, filename: "image.png", content_type: "image/png")


puts "Created #{User.count} users"


puts "Creating events"
file = URI.open("https://contentsquare.com/wp-content/uploads/2022/01/2022.01-User-Experience-Workshop-Blog-Image.png")
file_1 = URI.open("https://www.lionandmason.com/wp-content/uploads/2023/01/amelie-mourichon-wusOJ-2uY6w-unsplash.jpg")

event = Event.new(name: "Introduction to UX Design",
  description: "Whether you've been a developer for years or are just starting out, when you are coding you make micro decisions all the time that can effect the user's experience.
  With this interactive workshop, you'll learn the 'UX cheatsheet' to help make decisions that improve a user's experience. We'll then look at using that cheatsheet to pull apart websites to understand the decisions they've made that have led to a bad user experience. If there's time, we will then put our heads together to see how we could fix those bad experiences.
  Anyone is welcome.",
  date: Date.new(2024, 8, 2),
  start_time: DateTime.new(2024, 8, 2, 18),
  end_time: DateTime.new(2024, 8, 2, 20),
  location: "Kiln House, Norwich, NR2 1DX",
  user_id: codebar.id,
  keywords: "UX design, Web development, User experience"
)
event.tag_list.add("UX design", "Web development", "User experience")
event.photos.attach(io: file, filename: "image.png", content_type: "image/png")
event.photos.attach(io: file_1, filename: "image.jpg", content_type: "image/jpg")

event.save

file = URI.open("https://www.sunset.com/wp-content/uploads/burger-at-tailgate-party-pc-thomas-barwick-getty-400x0-c-default.jpg")

event = Event.new(name: "Bootstrap, Beer & BBQ!",
  description: "Is Bootstrap getting you down? Do you need to meet people you can talk things through with, discuss projects or just have a moan over how hard coding can be? Then you are welcome to come and join us for an informal gathering of like-minded people to talk through ideas, get some tips and advice and maybe help someone out too!",
  date: Date.new(2024, 6, 1),
  start_time: DateTime.new(2024, 6, 1, 17),
  end_time: DateTime.new(2024, 6, 1, 20),
  location: "98 Constantine Road, London NW3 2LS",
  user_id: ebi.id,
  keywords: "Bootstrap, Web development, CSS, Styling"
)
event.photos.attach(io: file, filename: "image.jpg", content_type: "image/jpg")

event.save


file = URI.open("https://thedigitalhacker.com/wp-content/uploads/2020/05/laprop-for-mba.jpg")
file_1 = URI.open("https://f2.codeday.org/d5pti1xheuyu/6waD5CFOnOKwJX8UqA73wL/c3ba8367d0dd41f708c1ce507f8a9571/341020_10150416906821332_1420802082_o.jpg")

event = Event.new(name: "An Evening of Python Coding",
  description: "Learners and complete Python novices are welcome as well as experts. If you want to start something new, please see this as an opportunity to jump start the project. If you need help with an existing coding project, bring it with you and we will have a look at it. If you want to show your complete code to someone else to test it, or if you just want to consult with python experts you are welcome.",
  date: Date.new(2024, 5, 28),
  start_time: DateTime.new(2024, 5, 28, 19),
  end_time: DateTime.new(2024, 5, 28, 21),
  location: "10 South Pl, London EC2M 7EB",
  user_id: thepythongroup.id,
  keywords: "Python, Web development"
)
event.tag_list.add("Python", "Web development")
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
  user_id: womenrock.id,
  keywords: "coding, programming, Women in tech"
)
event.tag_list.add("coding", "programming", "Women in tech")
event.photos.attach(io: file, filename: "image.jpg", content_type: "image/jpg")
event.photos.attach(io: file_1, filename: "image.jpg", content_type: "image/jpg")

event.save


file = URI.open("https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F719372359%2F269598256309%2F1%2Foriginal.20240314-122707?w=512&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C164%2C2000%2C1000&s=436a5355b1ea6b4ed21ad0c644c7bc99")
file_1 = URI.open("https://i2-prod.manchestereveningnews.co.uk/incoming/article18569554.ece/ALTERNATES/s1200/0_DSC_6284-1-copy-3.jpg")

event = Event.new(name: "Code with HTML, CSS & JavaScript",
  description: "Are you thinking about a career in Software Engineering, but don't know where to start? This free, 2-hour workshop will give you a solid understanding of what it takes to be a Web Developer, and how to write your first line of code.
  In this beginner-friendly session, you will learn from an expert instructor with real world experience. By the end of the session, you will: - Have a better understanding of the coding world and where web development fits in - Become familiar with the basic fundamentals of HTML, CSS and Javascript - Know how to start building a front-end web page on repl.it.",
  date: Date.new(2024, 6, 22),
  start_time: DateTime.new(2024, 6, 22, 19),
  end_time: DateTime.new(2024, 6, 22, 21),
  location: "Margaret Powell House, Milton Keynes, MK9 3BN",
  user_id: generalassembly.id,
  keywords: "HTML, CSS, JavaScript, coding, programming"
)
event.tag_list.add("HTML", "CSS", "JavaScript", "coding", "programming")
event.photos.attach(io: file, filename: "image.jpg", content_type: "image/jpg")
event.photos.attach(io: file_1, filename: "image.jpg", content_type: "image/jpg")

event.save


file = URI.open("https://secure.meetupstatic.com/photos/event/a/7/d/1/600_518682961.webp?w=384")
file_1 = URI.open("https://bootcamprankings.com/wp-content/uploads/2021/08/how-to-learn-how-to-code-for-free.jpg")

event = Event.new(name: "Coffee & Code - Saturday",
  description: "Bring your laptop, get a brew and start working on your project in good company. This is an event for Saturday morning early-birds who like a productive and social start to the weekend. Please note this is a general-purpose tech meet-up. Feel free to join, if you are:- Working on a project / learning about a topic that is tech or tech-adjacent- Keen on getting help / input from, or just socialising with other tech-folk. Nice and respectful of everyone present, regardless of background, chosen tech-stack or current skill-level.",
  date: Date.new(2024, 7, 13),
  start_time: DateTime.new(2024, 7, 13, 9),
  end_time: DateTime.new(2024, 7, 13, 11),
  location: "107 Charing Cross Road, London, WC2H 0EB",
  user_id: kate.id,
  keywords: "connect in person, HTML, CSS, JavaScript, Ruby, coding, programming"
)
event.tag_list.add("HTML", "CSS", "JavaScript", "coding", "programming")
event.photos.attach(io: file, filename: "image.jpg", content_type: "image/jpg")

event.photos.attach(io: file_1, filename: "image.jpg", content_type: "image/jpg")


event.save

file = URI.open("https://www.explore-group.com/storage/images-processed/w-1500_h-auto_m-fit_s-any__highres_464010407.jpeg")
file_1 = URI.open("https://app.codesmith.io/cba42abf0cb26842d7d9.jpg")

event = Event.new(name: "Ruby & Brunch",
  description: "Whether you are a complete novice or a programming master there is always more to learn. With Ruby & Brunch you can read that great programming book, work on that revolutionary project, or learn that cool new language with good food, a drink and fellow programmers to talk through ideas. We range from Ruby users through to HTML, CSS and JavaScript, whatever you want to talk about we are here to connect with you.",
  date: Date.new(2024, 8, 10),
  start_time: DateTime.new(2024, 8, 10, 9),
  end_time: DateTime.new(2024, 8, 10, 11),
  location: "5-7 Norfolk Street, Cambridge, CB1 2LB",
  user_id: kate.id,
  keywords: "connect in person, HTML, CSS, JavaScript, Ruby, Ruby on rails, coding, programming"
)
event.tag_list.add("connect in person", "HTML", "CSS", "JavaScript", "Ruby", "Ruby on rails", "coding", "programming")
event.photos.attach(io: file, filename: "image.jpg", content_type: "image/jpg")
event.photos.attach(io: file_1, filename: "image.jpg", content_type: "image/jpg")

event.save

file = URI.open("https://www.lighthouselabs.ca/uploads/post/open_graph_image/273/45116276_2218202598425836_6193304662867705856_o.jpg")
file_1 = URI.open("https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/themes/1221541/settings_images/IcBBdC21SdGT572E4ibV_one_on_one_small.png")

event = Event.new(name: "Code a Game in JavaScript ",
  description: "Welcome to JavaScript 101, a vibrant community dedicated to helping both new and experienced coders enhance their JavaScript skills. Our group is all about fostering a supportive and engaging environment where everyone can learn, share, and grow together. Learn the basics of JavaScript, an essential programming language for both front-end and back-end development.
  All levels are welcome! No experience is needed. What you'll learn - Translate logic into coding logic with JavaScript - Program you web version of Rock, Paper, Scissors using JavaScript libraries - Determine the winner using conditional logic.",
  date: Date.new(2024, 9, 20),
  start_time: DateTime.new(2024, 9, 20, 19),
  end_time: DateTime.new(2024, 9, 20, 21),
  location: "1 Victoria Street, Bristol, BS1 6AA",
  user_id: javascript101.id,
  keywords: "JavaScript, workshops, coding, programming"
)
event.tag_list.add("JavaScript", "Workshops", "coding", "programming")
event.photos.attach(io: file, filename: "image.png", content_type: "image/jpg")
event.photos.attach(io: file_1, filename: "image.jpg", content_type: "image/png")

event.save

file = URI.open("https://www.canyonpd.com/app/uploads/2022/03/students-use-tech.png")
file_1 = URI.open("https://cdn-media-1.freecodecamp.org/images/1*uFINNsYNbYuPIC3sUMyy6w.jpeg")

event = Event.new(name: "Gain productivity with Ruby",
  description: "Learn the basics of Ruby, an essential programming language for back-end development with many career outcomes. Ruby is an ideal language for beginners due to its user-friendly syntax, and readability. This is a 2-hour workshop, all levels are welcome! No experience is needed. Just prepare your computer.",
  date: Date.new(2022, 5, 6),
  start_time: DateTime.new(2022, 5, 6, 9),
  end_time: DateTime.new(2022, 5, 6, 11),
  location: "136 George St, London, W1H 5LD",
  user_id: railsgirlslondon.id,
  keywords: "connect in person, Ruby, Ruby on rails, coding, programming"
)
event.tag_list.add("connect in person", "Ruby", "Ruby on rails", "coding", "programming")
event.photos.attach(io: file, filename: "image.png", content_type: "image/png")
event.photos.attach(io: file_1, filename: "image.jpg", content_type: "image/jpg")

event.save

file = URI.open("https://www.shutterstock.com/image-photo/young-skilled-programmers-executing-testing-600nw-2358516041.jpg")
file_1 = URI.open("https://cdn.sanity.io/images/mz2hls6g/production/3e2da842ef9c90c953d1c6b0d03a92699277ec88-5534x3694.jpg?w=3840&q=75&fit=clip&auto=format")

event = Event.new(name: "Creative Coding for Beginners",
  description: "This course on creative coding is designed specifically for anyone who has never coded before, or feels they need extra support getting started with coding.
  You'll learn the fundamentals of coding in a fun way - creative visual designs - exploring shape, colour, repetition, randomness, not-so-randomness, recursion & fractals, animation.
  The course has been developed and tested with new coders over 5 years. The primary aim is to have fun creating and sharing visual designs - and as a painless side effect we'll be learning to code, and gaining understanding of key concepts transferrable to any programming language.",
  date: Date.new(2023, 7, 21),
  start_time: DateTime.new(2023, 7, 21, 19),
  end_time: DateTime.new(2023, 7, 21, 20),
  location: "30 Cheapside, Brighton, BN1 4GD",
  user_id: creativecoding.id,
  keywords: "Learn to code, workshops, coding, programming"
)
event.tag_list.add("Learn to code", "Workshops", "coding", "programming")
event.photos.attach(io: file, filename: "image.png", content_type: "image/jpg")
event.photos.attach(io: file_1, filename: "image.jpg", content_type: "image/jpg")

event.save

file = URI.open("https://www.tribalscale.com/_next/image?url=https%3A%2F%2Ftsweb-assets.s3.amazonaws.com%2Fimages%2FTribalScales_Vision_for_Exponential_Productivity_with_AI_and_Agile_Excellence.webp&w=828&q=75")
file_1 = URI.open("https://secure.meetupstatic.com/photos/event/3/f/a/b/600_518596299.webp?w=384")

event = Event.new(name: "Monday-Tech/Coding Hangout",
  description: "Bring your laptop, get a drink and start working on your project in good company. This is a Monday evening event to get a nice, social and productive start to the week.
  Please note this is a general-purpose tech meet-up. Feel free to join, if you are:
  - Working on a project / learning about a topic that is tech or tech-adjacent
  - Keen on getting help / input from, or just socialising with other tech-folk
  - Nice and respectful of everyone present, regardless of background, chosen tech-stack or current skill-level.",
  date: Date.new(2023, 10, 16),
  start_time: DateTime.new(2023, 10, 16, 19),
  end_time: DateTime.new(2023, 10, 16, 21),
  location: "81 Great Eastern Street, EC2A 3HU",
  user_id: eastlondontechies.id,
  keywords: "UX design, workshops, coding, programming, HTML, CSS, JavaScript"
)
event.tag_list.add("Learn to code", "Workshops", "coding", "programming")
event.photos.attach(io: file, filename: "image.png", content_type: "image/jpg")
event.photos.attach(io: file_1, filename: "image.jpg", content_type: "image/jpg")

event.save

puts "Created #{Event.count} events"
