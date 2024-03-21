# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# Users
User.create(email: 'john.doe@example.com', encrypted_password: 'password123', username: 'johndoe', owner: true)
User.create(email: 'jane.smith@example.com', encrypted_password: 'password456', username: 'janesmith')
User.create(email: 'mark.johnson@example.com', encrypted_password: 'password789', username: 'markjohnson')

# Venues
Venue.create(name: 'The Laugh Factory', location: '789 Comedy Street, Cityville', type: 'Bar/Café', user_id: User.first.id)
Venue.create(name: 'City Theater', location: '456 Broadway Avenue, Townsville', type: 'Theater', user_id: User.first.id)
Venue.create(name: 'Riverside Park', location: '123 Riverfront Road, Metropolis', type: 'Open air', user_id: User.second.id)

# Events
Event.create(name: 'Stand-up Comedy Night', description: 'Laugh out loud with top comedians.', category: 'Stand up comedy', price: 20, date: Date.today + 30, venue_id: Venue.first.id)
Event.create(name: 'Live Music Jam Session', description: 'Enjoy live music performances by local artists.', category: 'Life music', price: 10, date: Date.today + 45, venue_id: Venue.second.id)
Event.create(name: 'Outdoor Improv Show', description: 'Watch hilarious improv sketches under the stars.', category: 'Improv', price: 15, date: Date.today + 60, venue_id: Venue.third.id)

# Bookings
Booking.create(user_id: User.second.id, event_id: Event.first.id, status: 'confirmed')
Booking.create(user_id: User.third.id, event_id: Event.second.id, status: 'pending')
Booking.create(user_id: User.first.id, event_id: Event.third.id, status: 'confirmed')
