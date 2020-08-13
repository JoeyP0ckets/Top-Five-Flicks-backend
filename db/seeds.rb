# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

TopFive.destroy_all
WatchlistMovie.destroy_all
Watchlist.destroy_all
Review.destroy_all
User.destroy_all

User.create(username: "Farcastr", password: "test") 
 
5.times do 
  User.create(username: Faker::Internet.username, password: "test")
end


  Watchlist.create(user_id: User.first.id)
  Watchlist.create(user_id: User.second.id)
  Watchlist.create(user_id: User.third.id)
  Watchlist.create(user_id: User.fourth.id)
  Watchlist.create(user_id: User.fifth.id)
  Watchlist.create(user_id: User.last.id)


5.times do
  WatchlistMovie.create(imdb_id: "tt0093773", poster: "https://m.media-amazon.com/images/M/MV5BY2QwYmFmZTEtNzY2Mi00ZWMyLWEwY2YtMGIyNGZjMWExOWEyXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_SX300.jpg", title: "Predator", year: "1987", watchlist_id: Watchlist.all.sample.id)
  WatchlistMovie.create(imdb_id: "tt0090605", poster: "https://m.media-amazon.com/images/M/MV5BZGU2OGY5ZTYtMWNhYy00NjZiLWI0NjUtZmNhY2JhNDRmODU3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg", title: "Alien", year: "1986", watchlist_id: Watchlist.all.sample.id)
  WatchlistMovie.create(imdb_id: "tt0084787", poster: "https://m.media-amazon.com/images/M/MV5BNGViZWZmM2EtNGYzZi00ZDAyLTk3ODMtNzIyZTBjN2Y1NmM1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg", title: "The Thing", year: "1982", watchlist_id: Watchlist.all.sample.id)
end

5.times do
  Review.create(
    imdb_id: "tt0093773", 
    title: "Predator", 
    year: "1987", 
    directing: "John Mctiernan absolutely knows how to pace a movie that is really two movies in one.", 
    acting: "Pound for pound the acting chops are about as beefy as the biceps.  Standout performances all around",
    cinematography: "Great use of the jungle setting.  Claustrophobic but still able to follow the action in a dense environmnet",
    art_direction:  "James Cameron is supposed to have come up with the final Predator design.  Such a great step up from previous screen tests",
    soundtrack: "Duh Duh Duh Dah Duh Duh...One of the best use of war music for suspense I've ever heard.",
    rating: Faker::Number.between(from: 0, to: 5),
    user_id: User.all.sample.id
  )
  Review.create(
    imdb_id: "tt0090605", 
    title: "Aliens", 
    year: "1986", 
    directing: "James Cameron takes the suspense of the first movie and adds a healthy dose of firepower. One of the few times the sequel outshines the original", 
    acting: "The acting is perfect from the matriarch Sigourney Weaver down.  Bill (Game Over!) Paxton is instantly quotable. Michael Biehn shines as does newcomer Newt.",
    cinematography: "The amount of effects shots truly shows of the technical genius behind the camera.  Lighting is used to maximum effect.",
    art_direction:  "James Cameron and his FX crew have created the crowning achievement of effects pre-CGI.  The alien Quenn and Powerloader fight is simply the best all time.",
    soundtrack: "Duh Duh Duh Dah Duh Duh...One of the best use of war music for suspense I've ever heard.",
    rating: Faker::Number.between(from: 0, to: 5),
    user_id: User.all.sample.id
  )
  Review.create(
    imdb_id: "tt0084787", 
    title: "The Thing", 
    year: "1982", 
    directing: "John Carpenter directs what is his undisputable masterpiece.", 
    acting: "Kurt Russel is perfect as the rough-and-tumble helicopter pilot.  The paranoia is palpable as each character starts to distrust the other.",
    cinematography: "Carpenter's vision is beautifully brought to life in glorious widescreen panoramic.  The vacant vistas of Antarctica clash beautifully witht the confines of the base",
    art_direction:  "Rob Botin was just 22 years old when he created some of he best creature effects every put to film.  Gory, traumatizng, and creative as hell.",
    soundtrack: "John Carpenter's best score.  The pulsing syth bass and Ennio Mericone's eerie orchestrals set a menacing tone.",
    rating: Faker::Number.between(from: 0, to: 5),
    user_id: User.all.sample.id
  )
end 


 TopFive.create(category: "Top 5 90's Comedies", titleOne: "Tommy Boy", titleTwo: "Dumb and Dumber", titleThree: "The Big Lebowski", titleFour: "My Cousin Vinny", titleFive: "Sean of the Dead", user_id: User.first.id)
 TopFive.create(category: "Top 5 Romances", titleOne: "High Fidelity", titleTwo: "Shakespeare In Love", titleThree: "Notting Hill", titleFour: "The Notebook", titleFive: "Romeo and Juliet", user_id: User.second.id)
 TopFive.create(category: "Top 5 80's Action", titleOne: "Predator", titleTwo: "Running Man", titleThree: "Robocop", titleFour: "Aliens", titleFive: "Terminator", user_id: User.third.id)
 TopFive.create(category: "Top 5 FX movies", titleOne: "Aliens", titleTwo: "The Thing", titleThree: "Lord of the Rings Trilogy", titleFour: "Terminator 2", titleFive: "2001: A Space Odyssey", user_id: User.fourth.id)
 TopFive.create(category: "Top 5 Martial Arts", titleOne: "Enter the Dragon", titleTwo: "Legend of Drunken Master", titleThree: "The Matrix", titleFour: "Crouching Tiger, Hidden Dragon", titleFive: "IP Man", user_id: User.fifth.id)
 TopFive.create(category: "Top 5 Disney Movies", titleOne: "Aladdin", titleTwo: "The Emporer's New Groove", titleThree: "Beauty and the Beast", titleFour: "Robin Hood", titleFive: "101 Dalmations", user_id: User.last.id)
 TopFive.create(category: "Top 5 70's Dramas", titleOne: "The Godfather", titleTwo: "Serpico", titleThree: "Kramer vs Kramer", titleFour: "A Clockwork Orange", titleFive: "One Flew Over the Cuckoo's Nest", user_id: User.first.id)
 TopFive.create(category: "Top 5 Tom Hanks Movies", titleOne: "Saving Private Ryan", titleTwo: "BIG", titleThree: "Apollo 13", titleFour: "Castaway", titleFive: "A League of Their Own", user_id: User.first.id)
 
 TopFive.create(category: "Top 5 90's Comedies", titleOne: "Tommy Boy", titleTwo: "Dumb and Dumber", titleThree: "The Big Lebowski", titleFour: "My Cousin Vinny", titleFive: "Sean of the Dead", user_id: User.second.id)
 TopFive.create(category: "Top 5 Romances", titleOne: "High Fidelity", titleTwo: "Shakespeare In Love", titleThree: "Notting Hill", titleFour: "The Notebook", titleFive: "Romeo and Juliet", user_id: User.third.id)
 TopFive.create(category: "Top 5 80's Action", titleOne: "Predator", titleTwo: "Running Man", titleThree: "Robocop", titleFour: "Aliens", titleFive: "Terminator", user_id: User.first.id)
 TopFive.create(category: "Top 5 FX movies", titleOne: "Aliens", titleTwo: "The Thing", titleThree: "Lord of the Rings Trilogy", titleFour: "Terminator 2", titleFive: "2001: A Space Odyssey", user_id: User.fifth.id)
 TopFive.create(category: "Top 5 Martial Arts", titleOne: "Enter the Dragon", titleTwo: "Legend of Drunken Master", titleThree: "The Matrix", titleFour: "Crouching Tiger, Hidden Dragon", titleFive: "IP Man", user_id: User.last.id)
 TopFive.create(category: "Top 5 Disney Movies", titleOne: "Aladdin", titleTwo: "The Emporer's New Groove", titleThree: "Beauty and the Beast", titleFour: "Robin Hood", titleFive: "101 Dalmations", user_id: User.third.id)
 TopFive.create(category: "Top 5 70's Dramas", titleOne: "The Godfather", titleTwo: "Serpico", titleThree: "Kramer vs Kramer", titleFour: "A Clockwork Orange", titleFive: "One Flew Over the Cuckoo's Nest", user_id: User.fourth.id)
 TopFive.create(category: "Top 5 Tom Hanks Movies", titleOne: "Saving Private Ryan", titleTwo: "BIG", titleThree: "Apollo 13", titleFour: "Castaway", titleFive: "A League of Their Own", user_id: User.last.id)
 