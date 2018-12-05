User.destroy_all
Movie.destroy_all
Watched_Movies.destroy_all




the_dark_knight = Movie.create(title: "The Dark Knight", runtime: 120, genre: "action")
pride_and_prejudice = Movie.create(title: "Pride and Prejudice", runtime: 180, genre: "drama")
johnny_english = Movie.create(title: "Johnny English", runtime: 90, genre: "comedy")
the_two_towers = Movie.create(title: "The Two Towers", runtime: 240, genre: "adventure")
cleopatra = Movie.create(title: "Cleopatra", runtime: 320, genre: "romance")
infinity_war = Movie.create(title: "Infinity War", runtime: 160, genre: "action")
the_lion_king = Movie.create(title: "The Lion King", runtime: 90, genre: "kids")
frozen = Movie.create(title: "Frozen", runtime: 120, genre: "kids")

rachel_novick = User.create(name: "rachel novick")
jonnel_benjamin = User.create(name: "jonnel benjamin")
brunomon = User.create(name: "brunomon")
george_bush = User.create(name: "george bush")

watched1 = Watched_Movies.find_or_create_by(user: jonnel_benjamin, movie: johnny_english)
watched2 = Watched_Movies.find_or_create_by(user: rachel_novick, movie: the_dark_knight)
watched3 = Watched_Movies.find_or_create_by(user: brunomon, movie: frozen)
watched4 = Watched_Movies.find_or_create_by(user: george_bush, movie: infinity_war)
watched5 = Watched_Movies.find_or_create_by(user: rachel_novick, movie: cleopatra)
watched6 = Watched_Movies.find_or_create_by(user: jonnel_benjamin, movie: the_two_towers)
watched7 = Watched_Movies.find_or_create_by(user: brunomon, movie: pride_and_prejudice)
