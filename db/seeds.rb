

Booking.destroy_all
Event.destroy_all
Venue.destroy_all
User.destroy_all
Discount.destroy_all

puts "All the database destroyed"

# Users
john = User.create!(email: 'john.doe@example.com', password: 'password123', username: 'johndoe', owner: true)
jiregna = User.create!(email: 'jiregna@example.com', password: '123456', username: 'jiregna', owner: true)
jane = User.create!(email: 'jane.smith@example.com', password: 'password456', username: 'janesmith')
mark = User.create!(email: 'mark.johnson@example.com', password: 'password789', username: 'markjohnson')

# Venues
venue1 = Venue.new(
  name: "Cozy Cafe",
  location: "123 Main Street, Cityville",
  category: "Bar/Café",
  user_id: jiregna.id,
  image: "https://images.unsplash.com/photo-1521334726092-b509a19597c6?q=80&w=3001&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

file1 = URI.open("https://images.unsplash.com/photo-1521334726092-b509a19597c6?q=80&w=3001&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
venue1.photos.attach(io: file1, filename: "img_for_venue_1.jpg", content_type: "image/jpg")
venue1.save

venue2 = Venue.new(
  name: "City Park Amphitheater",
  location: "City Park, Downtown",
  category: "Theater",
  user_id: john.id,
  image: "https://images.unsplash.com/photo-1521727284875-14f6b020d1d6?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

file2 = URI.open("https://images.unsplash.com/photo-1521727284875-14f6b020d1d6?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
venue2.photos.attach(io: file2, filename: "img_for_venue_2.jpg", content_type: "image/jpg")
venue2.save

venue3 = Venue.new(
  name: "Retro Bowling Alley",
  location: "456 Elm Street, Urbantown",
  category: "Open air",
  user_id: jiregna.id,
  image: "https://images.unsplash.com/photo-1618901882475-4a8ce888ffda?q=80&w=3132&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

file3 = URI.open("https://images.unsplash.com/photo-1618901882475-4a8ce888ffda?q=80&w=3132&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
venue3.photos.attach(io: file3, filename: "img_for_venue_3.jpg", content_type: "image/jpg")
venue3.save



venue4 = Venue.new(
  name: "Madison Square Garden",
  location: "4 Pennsylvania Plaza, New York, NY 10001",
  category: "Open air",
  user_id: john.id,
  image: "https://images.unsplash.com/photo-1576584520374-c55375496eac?q=80&w=2874&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

file4 = URI.open("https://images.unsplash.com/photo-1576584520374-c55375496eac?q=80&w=2874&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
venue4.photos.attach(io: file4, filename: "img_for_venue_4.jpg", content_type: "image/jpg")
venue4.save

venue5 = Venue.new(
  name: "The O2 Arena - London",
  location: "Peninsula Square, London SE10 0DX, United Kingdom",
  category: "Theater",
  user_id: jiregna.id,
  image: "https://images.unsplash.com/photo-1672060385789-dedce96a8a3b?q=80&w=2831&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

file5 = URI.open("https://images.unsplash.com/photo-1672060385789-dedce96a8a3b?q=80&w=2831&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
venue5.photos.attach(io: file5, filename: "img_for_venue_5.jpg", content_type: "image/jpg")
venue5.save

venue6 = Venue.new(
  name: "Sydney Opera House",
  location: "Bennelong Point, Sydney NSW 2000, Australia",
  category: "Other",
  user_id: john.id,
  image: "https://images.unsplash.com/photo-1523059623039-a9ed027e7fad?q=80&w=2864&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

file6 = URI.open("https://images.unsplash.com/photo-1523059623039-a9ed027e7fad?q=80&w=2864&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
venue6.photos.attach(io: file6, filename: "img_for_venue_6.jpg", content_type: "image/jpg")
venue6.save


venue7 = Venue.new(
  name: "Berghain/Panorama Bar",
  location: "Am Wriezener Bahnhof, 10243 Berlin, Germany",
  category: "Bar/Café",
  user_id: jiregna.id,
  image: "https://images.unsplash.com/photo-1528728329032-2972f65dfb3f?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

file7 = URI.open("https://images.unsplash.com/photo-1528728329032-2972f65dfb3f?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
venue7.photos.attach(io: file7, filename: "img_for_venue_7.jpg", content_type: "image/jpg")
venue7.save

venue8 = Venue.new(
  name: "The Colosseum",
  location: "Piazza del Colosseo, 00184 Rome, Italy",
  category: "Theater",
  user_id: john.id,
  image: "https://plus.unsplash.com/premium_photo-1675975635390-6ca4d5c056b2?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

file8 = URI.open("https://plus.unsplash.com/premium_photo-1675975635390-6ca4d5c056b2?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
venue8.photos.attach(io: file8, filename: "img_for_venue_7.jpg", content_type: "image/jpg")
venue8.save




# Events
event1 = Event.new(
  name: 'Tribute to Tina: An Evening Celebrating Tina Fey',
  description: 'Join us for a special evening dedicated to celebrating the comedic genius of Tina Fey! From her iconic performances on "Saturday Night Live" to her groundbreaking work as a writer, actress, and producer.',
  category: 'Stand up comedy',
  price: 20,
  date: Date.today,
  time: Time.parse('19:00'), # Adding a specific time (e.g., 7:00 PM)
  venue_id: Venue.first.id,
  image: "https://images.unsplash.com/photo-1611956425642-d5a8169abd63?q=80&w=1811&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

file1 = URI.open("https://images.unsplash.com/photo-1611956425642-d5a8169abd63?q=80&w=1811&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
event1.photos.attach(io: file1, filename: "img_for_event_1.jpg", content_type: "image/jpg")
event1.save

event2 = Event.new(
  name: 'Sunset Serenade: An Evening of Music and Poetry',
  description: 'Embark on a one-of-a-kind adventure with "Nature Walk Improv: A Journey Through Spontaneity." Explore the beauty of City Park while enjoying live improv performances inspired by the wonders of nature.',
  category: 'Live music',
  price: 10,
  date: Date.today + 3,
  time: Time.parse('20:00'), # Adding a specific time (e.g., 8:00 PM)
  venue_id: Venue.second.id,
  image: "https://images.unsplash.com/photo-1523712999610-f77fbcfc3843?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

file2 = URI.open("https://images.unsplash.com/photo-1523712999610-f77fbcfc3843?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
event2.photos.attach(io: file2, filename: "img_for_event_1.jpg", content_type: "image/jpg")
event2.save

event3 = Event.new(
  name: 'Park Bench Stories: An Outdoor Improv Experience',
  description: 'Join us for an unforgettable evening of laughter and spontaneity at "Park Bench Stories: An Outdoor Improv Experience." Set against the picturesque backdrop of Treptower, this unique improv show brings the joy of improvisational theater to the great outdoors.',
  category: 'Improv',
  price: 15,
  date: Date.today + 10,
  time: Time.parse('20:00'), # Adding a specific time (e.g., 9:00 PM)
  venue_id: Venue.third.id,
  image: "https://images.unsplash.com/photo-1585699324551-f6c309eedeca?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

file3 = URI.open("https://images.unsplash.com/photo-1585699324551-f6c309eedeca?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
event3.photos.attach(io: file3, filename: "img_for_event_1.jpg", content_type: "image/jpg")
event3.save

event4 = Event.new(
  name: 'Nature Walk Improv: A Journey Through Spontaneity',
  description: 'Embark on a one-of-a-kind adventure into the world of improvisational theater with Nature Walk Improv: A Journey Through Spontaneity! Join us for a unique and immersive experience that combines the beauty of nature with the spontaneity of improv comedy.',
  category: 'Improv',
  price: 15,
  date: Date.today,
  time: Time.parse('22:00'), # Adding a specific time (e.g., 10:00 PM)
  venue_id: Venue.third.id,
  image: "https://images.unsplash.com/photo-1588928781379-c355ab3edc9b?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

file4 = URI.open("https://images.unsplash.com/photo-1588928781379-c355ab3edc9b?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
event4.photos.attach(io: file4, filename: "img_for_event_1.jpg", content_type: "image/jpg")
event4.save

event5 = Event.new(
  name: 'Comedy Club Showcase: A Night of Laughter and Entertainment',
  description: 'Get ready for an evening of hilarity and side-splitting comedy at the Comedy Club Showcase! Join us for a showcase of some of the funniest comedians in town!',
  category: 'Stand up comedy',
  price: 10,
  date: Date.today + 2,
  time: Time.parse('18:30'), # Adding a specific time (e.g., 6:30 PM)
  venue_id: Venue.first.id,
  image: "https://mymolo.de/wp-content/uploads/2023/01/Echolon-Open-Air-300835014_5418191394935191_5265148626473993837_n.jpeg"
)

file5 = URI.open("https://mymolo.de/wp-content/uploads/2023/01/Echolon-Open-Air-300835014_5418191394935191_5265148626473993837_n.jpeg")
event5.photos.attach(io: file5, filename: "img_for_event_1.jpg", content_type: "image/jpg")
event5.save

event6 = Event.new(
  name: 'The Big Lebowski',
  description: 'Join us for a laid-back evening celebrating "The Big Lebowski," the cult classic film that has inspired a devoted following of fans, affectionately known as "Achievers.',
  category: 'Improv',
  price: 30,
  date: Date.today,
  time: Time.parse('19:30'), # Adding a specific time (e.g., 7:30 PM)
  venue_id: Venue.second.id,
  image: "https://image.urlaubspiraten.de/1024/image/upload/v1681228429/Impressions%20and%20Other%20Assets/PawnDotComAtmo1_nedc6j.jpg"
)

file6 = URI.open("https://image.urlaubspiraten.de/1024/image/upload/v1681228429/Impressions%20and%20Other%20Assets/PawnDotComAtmo1_nedc6j.jpg")
event6.photos.attach(io: file6, filename: "img_for_event_1.jpg", content_type: "image/jpg")
event6.save


event7 = Event.new(
  name: 'Laugh Factory Presents: Friday Night Funnies',
  description: 'Get ready for a night of side-splitting laughter and non-stop entertainment at Laugh Factory Presents: Friday Night Funnies! Join us for an evening of top-notch stand-up comedy featuring some of the funniest comedians in the business.',
  category: 'Stand up comedy',
  price: 35,
  date: Date.today,
  time: Time.parse('19:00'), # Adding a specific time (e.g., 7:00 PM)
  venue_id: Venue.fourth.id,
  image: "https://images.unsplash.com/photo-1514525253161-7a46d19cd819?q=80&w=2874&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

file7 = URI.open("https://images.unsplash.com/photo-1514525253161-7a46d19cd819?q=80&w=2874&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
event7.photos.attach(io: file7, filename: "img_for_event_7.jpg", content_type: "image/jpg")
event7.save

event8 = Event.new(
  name: 'Jazz Night with The Smooth Operators',
  description: 'Indulge in an evening of smooth jazz and soulful melodies at Jazz Night with The Smooth Operators! Join us for a night of live music performed by our acclaimed jazz ensemble.',
  category: 'Live music',
  price: 27,
  date: Date.today + 3,
  time: Time.parse('20:00'), # Adding a specific time (e.g., 8:00 PM)
  venue_id: Venue.fifth.id,
  image: "https://images.unsplash.com/photo-1546708770-589dab7b22c7?q=80&w=2824&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

file8 = URI.open("https://images.unsplash.com/photo-1546708770-589dab7b22c7?q=80&w=2824&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
event8.photos.attach(io: file8, filename: "img_for_event_8.jpg", content_type: "image/jpg")
event8.save

event9 = Event.new(
  name: 'Acoustic Sessions Open Mic',
  description: 'Unplug and unwind at our Acoustic Sessions Open Mic event! Join us for an evening of stripped-down performances and raw talent as local musicians, singers, and songwriters take the stage to share their acoustic creations.',
  category: 'Open mic',
  price: 45,
  date: Date.today + 10,
  time: Time.parse('20:00'), # Adding a specific time (e.g., 9:00 PM)
  venue_id: Venue.third.id,
  image: "https://images.unsplash.com/photo-1493225457124-a3eb161ffa5f?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

file9 = URI.open("https://images.unsplash.com/photo-1493225457124-a3eb161ffa5f?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
event9.photos.attach(io: file9, filename: "img_for_event_9.jpg", content_type: "image/jpg")
event9.save

event10 = Event.new(
  name: 'The Importance of Being Earnest',
  description: 'Step into the witty and whimsical world of Oscar Wilde The Importance of Being Earnest at our special event! Join us for an evening of theatrical delight as we present a live performance of this timeless comedy.',
  category: 'Theater',
  price: 15,
  date: Date.today,
  time: Time.parse('22:00'), # Adding a specific time (e.g., 10:00 PM)
  venue_id: Venue.second.id,
  image: "https://plus.unsplash.com/premium_photo-1684923604213-27f8446d4c29?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

file10 = URI.open("https://plus.unsplash.com/premium_photo-1684923604213-27f8446d4c29?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
event10.photos.attach(io: file10, filename: "img_for_event_10.jpg", content_type: "image/jpg")
event10.save

event11 = Event.new(
  name: 'Comedy Cellar Showcase',
  description: 'Get ready for a night of laughter and entertainment at the Comedy Cellar Showcase! Join us for an evening of stand-up comedy featuring a lineup of talented comedians handpicked from the legendary Comedy Cellar in New York City',
  category: 'Stand up comedy',
  price: 15,
  date: Date.today + 2,
  time: Time.parse('18:30'), # Adding a specific time (e.g., 6:30 PM)
  venue_id: Venue.first.id,
  image: "https://images.unsplash.com/photo-1543584756-8f40a802e14f?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

file11 = URI.open("https://images.unsplash.com/photo-1543584756-8f40a802e14f?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
event11.photos.attach(io: file11, filename: "img_for_event_11.jpg", content_type: "image/jpg")
event11.save

event12 = Event.new(
  name: 'Whose Line Is It Anyway?',
  description: 'Experience the vibrant pulse of the waterfront at Harborfront Happenings, a series of dynamic and diverse events that celebrate the spirit of community, culture, and creativity along the waterfront.',
  category: 'Improv',
  price: 30,
  date: Date.today,
  time: Time.parse('19:30'), # Adding a specific time (e.g., 7:30 PM)
  venue_id: Venue.first.id,
  image: "https://media.istockphoto.com/id/1133752978/de/foto/zwei-weibliche-theaterstudenten-an-der-performing-arts-school-in-der-studio.jpg?s=1024x1024&w=is&k=20&c=8gFjntNlRxcGXF1zoyvzgaTHeDB3_rU-4y2hhCWXc6A="
)

file12 = URI.open("https://media.istockphoto.com/id/1133752978/de/foto/zwei-weibliche-theaterstudenten-an-der-performing-arts-school-in-der-studio.jpg?s=1024x1024&w=is&k=20&c=8gFjntNlRxcGXF1zoyvzgaTHeDB3_rU-4y2hhCWXc6A=")
event12.photos.attach(io: file12, filename: "img_for_event_12.jpg", content_type: "image/jpg")
event12.save




# Bookings
Booking.create!(user_id: User.second.id, event_id: Event.first.id, status: 'confirmed', paid_price: Event.first.price)
Booking.create!(user_id: User.third.id, event_id: Event.second.id, status: 'pending', paid_price: Event.second.price)
Booking.create!(user_id: User.first.id, event_id: Event.third.id, status: 'confirmed', paid_price: Event.third.price)

# Discounts
Discount.create!(event_id: Event.first.id, title: "StandBy", new_price: 10)
Discount.create!(event_id: Event.last.id, title: "StandBy", new_price: 15)

puts "You created a new database"
