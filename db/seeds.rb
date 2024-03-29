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
Venue.create!(
  name: "Cozy Cafe",
  location: "123 Main Street, Cityville",
  category: "Bar/Café",
  user_id: jiregna.id,
  image: "https://images.unsplash.com/photo-1521334726092-b509a19597c6?q=80&w=3001&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

Venue.create!(
  name: "City Park Amphitheater",
  location: "City Park, Downtown",
  category: "Theater",
  user_id: john.id,
  image: "https://images.unsplash.com/photo-1521727284875-14f6b020d1d6?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

Venue.create!(
  name: "Retro Bowling Alley",
  location: "456 Elm Street, Urbantown",
  category: "Open air",
  user_id: jiregna.id,
  image: "https://images.unsplash.com/photo-1618901882475-4a8ce888ffda?q=80&w=3132&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)


# Events
Event.create!(
  name: 'Stand-up Comedy Night',
  description: 'Laugh out loud with top comedians.',
  category: 'Stand up comedy',
  price: 20,
  date: Date.today + 2,
  time: Time.parse('19:00'), # Adding a specific time (e.g., 7:00 PM)
  venue_id: Venue.first.id,
  image: "https://images.unsplash.com/photo-1611956425642-d5a8169abd63?q=80&w=1811&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

Event.create!(
  name: 'Live Music Jam Session',
  description: 'Enjoy live music performances by local artists.',
  category: 'Live music',
  price: 10,
  date: Date.today + 3,
  time: Time.parse('20:00'), # Adding a specific time (e.g., 8:00 PM)
  venue_id: Venue.second.id,
  image: "https://images.unsplash.com/photo-1614999098814-23c48ffa512d?q=80&w=1548&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

Event.create!(
  name: 'Outdoor Improv Show',
  description: 'Watch hilarious improv sketches under the stars.',
  category: 'Improv',
  price: 15,
  date: Date.today + 10,
  time: Time.parse('20:00'), # Adding a specific time (e.g., 9:00 PM)
  venue_id: Venue.third.id,
  image: "https://images.unsplash.com/photo-1585699324551-f6c309eedeca?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

Event.create!(
  name: 'Outdoor Improv Show',
  description: 'Watch hilarious improv sketches under the stars.',
  category: 'Improv',
  price: 15,
  date: Date.today,
  time: Time.parse('22:00'), # Adding a specific time (e.g., 10:00 PM)
  venue_id: Venue.third.id,
  image: "https://images.unsplash.com/photo-1588928781379-c355ab3edc9b?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

Event.create!(
  name: 'Comedy Women',
  description: 'Take your power back',
  category: 'Improv',
  price: 10,
  date: Date.today + 2,
  time: Time.parse('18:30'), # Adding a specific time (e.g., 6:30 PM)
  venue_id: Venue.first.id,
  image: "https://mymolo.de/wp-content/uploads/2023/01/Echolon-Open-Air-300835014_5418191394935191_5265148626473993837_n.jpeg"
)

Event.create!(
  name: 'Improvised live',
  description: 'Come an live with us.',
  category: 'Improv',
  price: 10,
  date: Date.today + 3,
  time: Time.parse('19:30'), # Adding a specific time (e.g., 7:30 PM)
  venue_id: Venue.second.id,
  image: "https://image.urlaubspiraten.de/1024/image/upload/v1681228429/Impressions%20and%20Other%20Assets/PawnDotComAtmo1_nedc6j.jpg"
)

# Bookings
Booking.create!(user_id: User.second.id, event_id: Event.first.id, status: 'confirmed', paid_price: Event.first.price)
Booking.create!(user_id: User.third.id, event_id: Event.second.id, status: 'pending', paid_price: Event.second.price)
Booking.create!(user_id: User.first.id, event_id: Event.third.id, status: 'confirmed', paid_price: Event.third.price)

# Discounts
Discount.create!(event_id: Event.first.id, title: "StandBy", new_price: 10)


puts "You created a new database"
