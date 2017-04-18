# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all

Product.create!([{:name => "Black Bike", :description => "Awesome bike. Perfect for a summer adventure in the city.", :image_url => "https://static.pexels.com/photos/100582/pexels-photo-100582.jpeg", :price => 629.0, :colour => "Black"},

{:name => "Green Bike", :description => "Great bike. Awesome for biking in the forest.", :image_url => "https://static.pexels.com/photos/191042/pexels-photo-191042.jpeg", :price => 529.99, :colour => "Green"},

{:name => "Blue Bike", :description => "Blue bike.", :image_url => "https://static.pexels.com/photos/92633/pexels-photo-92633.jpeg", :price => 459.99, :colour => "Blue"}])
