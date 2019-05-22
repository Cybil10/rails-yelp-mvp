puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  { name: 'Dishoom', address: '7 Boundary StLondon E2 7JE', phone_number: '01 60 33 34 33', category: 'french'},
  { name: 'Pizza East', address: '56A Shoreditch London E1 6PQ', phone_number: '01 22 33 34 22', category: 'french'}
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

review = Review.new(content: "comment", rating: 5)
review.restaurant = Restaurant.last
review.save

