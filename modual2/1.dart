class Movie {
  String title;
  String genre;
  int releasedYear;

  // Constructor
  Movie(this.title, this.genre, this.releasedYear);

  // Method to display movie details
  void displayDetails() {
    print("Title: $title");
    print("Genre: $genre");
    print("Released Year: $releasedYear");
  }
}

void main() {
  // Instantiate Movie objects
  Movie movie1 = Movie("Inception", "Science Fiction", 2010);
  Movie movie2 = Movie("The Godfather", "Crime", 1972);
  Movie movie3 = Movie("The Dark Knight", "Action", 2008);

  // Store them in an array
  List<Movie> movies = [movie1, movie2, movie3];

  // Access and display attributes for each movie
  for (var movie in movies) {
    movie.displayDetails();
    print(''); // Blank line for better readability
  }
}
