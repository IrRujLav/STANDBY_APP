

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


# Events
event1 = Event.new(
  name: 'Stand-up Comedy Night',
  description: 'Join us for a special evening dedicated to celebrating the comedic genius of Tina Fey! From her iconic performances on "Saturday Night Live" to her groundbreaking work as a writer, actress, and producer, Tina Fey has left an indelible mark on the world of comedy. This event is a tribute to her talent, wit, and enduring influence on pop culture.',
  category: 'Stand up comedy',
  price: 20,
  date: Date.today + 2,
  time: Time.parse('19:00'), # Adding a specific time (e.g., 7:00 PM)
  venue_id: Venue.first.id,
  image: "https://images.unsplash.com/photo-1611956425642-d5a8169abd63?q=80&w=1811&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

file1 = URI.open("https://images.unsplash.com/photo-1611956425642-d5a8169abd63?q=80&w=1811&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
event1.photos.attach(io: file1, filename: "img_for_event_1.jpg", content_type: "image/jpg")
event1.save

event2 = Event.new(
  name: 'Enjoy live music performances by local artists.',
  description: 'Embark on a one-of-a-kind adventure with "Nature Walk Improv: A Journey Through Spontaneity." Explore the beauty of [Park Name] while enjoying live improv performances inspired by the wonders of nature.',
  category: 'Live music',
  price: 10,
  date: Date.today + 3,
  time: Time.parse('20:00'), # Adding a specific time (e.g., 8:00 PM)
  venue_id: Venue.second.id,
  image: "https://images.unsplash.com/photo-1614999098814-23c48ffa512d?q=80&w=1548&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

file2 = URI.open("https://images.unsplash.com/photo-1614999098814-23c48ffa512d?q=80&w=1548&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
event2.photos.attach(io: file2, filename: "img_for_event_1.jpg", content_type: "image/jpg")
event2.save

event3 = Event.new(
  name: 'Watch hilarious improv sketches under the stars.',
  description: 'Join us for a special evening dedicated to celebrating the comedic genius of Tina Fey! From her iconic performances on "Saturday Night Live" to her groundbreaking work as a writer, actress, and producer, Tina Fey has left an indelible mark on the world of comedy. This event is a tribute to her talent, wit, and enduring influence on pop culture.',
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
  name: 'Outdoor Improv Show',
  description: 'Embark on a one-of-a-kind adventure with "Nature Walk Improv: A Journey Through Spontaneity." Explore the beauty of [Park Name] while enjoying live improv performances inspired by the wonders of nature.',
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
  name: 'Comedy Women',
  description: 'Experience the magic of outdoor theater at our Picnic Blanket Theater event! Join us for an enchanting evening under the stars as we present a live performance of [choose a play, musical, or series of short acts]. Bring your picnic blanket, pack a delicious spread of snacks and beverages, and settle in for a night of laughter, drama, and unforgettable memories with friends, family, and fellow theater enthusiasts.',
  category: 'Improv',
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
  name: 'Movie Night',
  description: 'Join us for a laid-back evening celebrating "The Big Lebowski," the cult classic film that has inspired a devoted following of fans, affectionately known as "Achievers." Whether you\'re a die-hard fan or new to the world of the Dude, this event is a chance to immerse yourself in the offbeat humor and unforgettable characters of this beloved film. So grab your bathrobe, bowling shoes, and favorite beverage (White Russians encouraged) as we pay homage to the Dude and his epic quest for a new rug.',
  category: 'Improv',
  price: 10,
  date: Date.today + 3,
  time: Time.parse('19:30'), # Adding a specific time (e.g., 7:30 PM)
  venue_id: Venue.second.id,
  image: "https://image.urlaubspiraten.de/1024/image/upload/v1681228429/Impressions%20and%20Other%20Assets/PawnDotComAtmo1_nedc6j.jpg"
)

file6 = URI.open("https://image.urlaubspiraten.de/1024/image/upload/v1681228429/Impressions%20and%20Other%20Assets/PawnDotComAtmo1_nedc6j.jpg")
event6.photos.attach(io: file6, filename: "img_for_event_1.jpg", content_type: "image/jpg")
event6.save

# Bookings
Booking.create!(user_id: User.second.id, event_id: Event.first.id, status: 'confirmed', paid_price: Event.first.price)
Booking.create!(user_id: User.third.id, event_id: Event.second.id, status: 'pending', paid_price: Event.second.price)
Booking.create!(user_id: User.first.id, event_id: Event.third.id, status: 'confirmed', paid_price: Event.third.price)

# Discounts
Discount.create!(event_id: Event.first.id, title: "StandBy", new_price: 10)
Discount.create!(event_id: Event.last.id, title: "StandBy", new_price: 15)

puts "You created a new database"
