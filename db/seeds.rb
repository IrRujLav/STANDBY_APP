Booking.destroy_all
Event.destroy_all
Venue.destroy_all
User.destroy_all

# Users
User.create!(email: 'john.doe@example.com', password: 'password123', username: 'johndoe', owner: true)
User.create!(email: 'jane.smith@example.com', password: 'password456', username: 'janesmith')
User.create!(email: 'mark.johnson@example.com', password: 'password789', username: 'markjohnson')

# Venues
Venue.create!(name: 'The Laugh Factory', location: '789 Comedy Street, Cityville', category: 'Bar/Café', user_id: User.first.id)
Venue.create!(name: 'City Theater', location: '456 Broadway Avenue, Townsville', category: 'Theater', user_id: User.first.id)
Venue.create!(name: 'Riverside Park', location: '123 Riverfront Road, Metropolis', category: 'Open air', user_id: User.second.id)

# Events
Event.create!(name: 'Stand-up Comedy Night', description: 'Laugh out loud with top comedians.', category: 'Stand up comedy', price: 20, date: Date.today + 30, venue_id: Venue.first.id)
Event.create!(name: 'Live Music Jam Session', description: 'Enjoy live music performances by local artists.', category: 'Live music', price: 10, date: Date.today + 45, venue_id: Venue.second.id)
Event.create!(name: 'Outdoor Improv Show', description: 'Watch hilarious improv sketches under the stars.', category: 'Improv', price: 15, date: Date.today + 60, venue_id: Venue.third.id)

# Bookings
Booking.create!(user_id: User.second.id, event_id: Event.first.id, status: 'confirmed')
Booking.create!(user_id: User.third.id, event_id: Event.second.id, status: 'pending')
Booking.create!(user_id: User.first.id, event_id: Event.third.id, status: 'confirmed')
