# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(:name => "White Bike", :description => "Awesome white bike. Perfect for a summer adventure in the city.", :image_url => "https://s-media-cache-ak0.pinimg.com/originals/3e/39/86/3e398698f9ffc228edeeb40c325e6c3d.jpg", :price => 629.0, :colour => "White")

Product.create(:name => "Black Bike", :description => "Great black bike. Awesome for biking in the forest.", :image_url => "https://www.rutlandcycling.com/images/marin-fairfax-sc2-ig-2016-hybrid-bike-black.jpg?maxheight=1200", :price => 529.99, :colour => "Black")

Product.create(:name => "Blue Bike", :description => "Great bike.", :image_url => "http://bike.whistlerblackcomb.com/~/media/Bike-Park/Orientation-Guide/2016/1920OrientaionGuideDH.ashx?la=en&hash=D5513672CA9F92C9480B1A670728CA0DCA371167", :price => 325.99, :colour => "Blue")

Product.create(:name => "Purple Bike", :description => "Purple bike.", :image_url => "http://salsacycles.com/files/bikes/BEARGREASE_CARBON_X7_Bike-Carousel_1.jpg", :price => 459.99, :colour => "Purple")
