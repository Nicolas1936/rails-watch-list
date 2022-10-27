puts "Cleaning database..."
Bookmark.destroy_all
Movie.destroy_all
List.destroy_all

puts "Create list of movies (type)"
movies_genre = ["Action", "Comedy", "Drama", "Fantasy", "Horror", "Mystery", "Romance", "Thriller"]

movies_genre.each do |movie_genre|
  List.create!(name: "#{movie_genre}")
end
puts "End of creation of list of movies"

puts "Create 4 movies"

Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)

puts "End of creation of movies"


puts "Create link between movies and lists"
Movie.all.each do |movie|
  List.all.sample(4).each do |list|
    Bookmark.create!(
      movie_id: movie.id,
      list_id: list.id,
      comment: Faker::Quote.matz
    )
  end
end
puts "End of creation link between movies and lists"
