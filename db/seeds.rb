User.destroy_all
Movie.destroy_all
Watched_Movies.destroy_all




the_dark_knight = Movie.create(title: "The Dark Knight", runtime: 120, genre: "action")
pride_and_prejudice = Movie.create(title: "pride and prejudice", runtime: 180, genre: "drama")
johnny_english = Movie.create(title: "johnny english", runtime: 90, genre: "comedy")

rachel_novick = User.create(name: "rachel novick")
jonnel_benjamin = User.create(name: "jonnel benjamin")

watched1 = Watched_Movies.find_or_create_by(user: jonnel_benjamin, movie: johnny_english)
watched2 = Watched_Movies.find_or_create_by(user: rachel_novick, movie: the_dark_knight)
