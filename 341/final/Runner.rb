require 'sqlite3'
require 'active_record'
load 'Movie.rb'
load 'Review.rb'
load 'User.rb'

ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3', # or 'postgresql' or 'sqlite3'
  database: 'Netflix.sqlite',
)

puts "1. Ability to retrieve total # of movies"
puts Movie.count 
puts "#" * 80


puts "2. Ability to lookup a movie name from a movie id"
movie = Movie.find(74)
puts movie.name
puts "	id => #{movie.id}"
puts "#" * 80


puts "3. Ability to lookup a movie id from a movie name"
Movie.where(name: "The Matrix").limit(10).each do |movie|
	puts movie.name 
	puts "	id => #{movie.id}"
end
puts "#" * 80


puts "4. Ability to retrieve information about all the movies: ids, names, number of reviews, average rating, lowest rating, and highest rating; also the ability to foreach through this data"
Movie.all.includes(:reviews).limit(10).each do |movie|
	reviews = movie.reviews.sort{|review| review.rating}
	puts "#{movie.name} "
	puts "	Number of reviews => #{movie.reviews.count}"
	puts "	Hightst rating => #{reviews.first.rating}"
	puts "	Lowest rating => #{reviews.last.rating}"
end
puts "#" * 80

puts "5. Ability to retrieve top-10 movies with the highest average ratings"
Review.group(:movie_id).average(:rating).sort_by {|key , value| value}.reverse.take(10).each do |key, value|
	puts Movie.find(key).name
	puts "	Average rating => #{value}"
end
puts "#" * 80

puts "6. Ability to retrieve total # of reviews"
puts Review.count
puts "#" * 80

puts "7. Ability to retrieve average rating across all the reviews"
puts Review.average(:rating)
puts "#" * 80

puts "8. Ability to retrieve information about a user based on user id: number of distinct movies reviewed, number of reviews submitted, and average rating given by user across all their reviews" 
reviews = Review.where(user_id: User.last.id)
puts User.last.name
puts "	number of distinct movies => #{reviews.map{|review| review.movie_id}.uniq.count
}"
puts "	number of reviews => #{reviews.count}"
puts "	average rating => #{reviews.map{|review| review.rating}.sum / reviews.count}"
puts "#" * 80

puts "9. Ability to retrieve top-10 users who have submitted the most reviews"
Review.group(:user_id).count(:rating).sort_by {|key, value| value}.reverse.take(10).each do |key, value|
	user = User.find(key)
	puts user.name
	puts "	Number of Reviews => #{value}"
end
puts "#" * 80

puts "10. Ability to insert a new review into the database"
movie = Movie.first
user = User.last
review = Review.new(rating: 5, movie_id: movie.id, user_id: user.id)
review.save

inserted_review = Review.last
puts inserted_review.movie.name
puts "	#{inserted_review.rating}"
puts "	#{inserted_review.user.name}"
	
