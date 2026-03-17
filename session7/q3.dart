import 'dart:vmservice_io';

/**
 Q3 
 Create a class Movie with attributes title and rating. In main()
 , create a list of 4 movies. Print only the movies with a
  rating above 7
 */
class movie {
  String? title;
  double? rating;
  movie(String title, double rating) {
    this.title = title;
    this.rating = rating;
  }
}

void main() {
  List<movie> movies = [
    movie("fast and furious", 8.9),
    movie("Pirates of the Caribbean", 8.0),
    movie("takeen", 5.5),
    movie("Noah", 6.7),
  ];
  movie("fast and furious", 8.9);
  movie("Pirates of the Caribbean", 8.0);
  movie("takeen", 5.5);
  movie("Noah", 6.7);
  for (var movie in movies) {
    if (movie.rating! > 7) {
      print(movie.title);
    }
  }
}
