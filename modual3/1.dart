// Define the Book class
class Book {
  String title;
  String author;
  int publishedYear;

  // Constructor for the Book class
  Book(this.title, this.author, this.publishedYear);
}

void main() {
  // Create a list of Book objects
  List<Book> books = [
    Book('1984', 'George Orwell', 1949),
    Book('To Kill a Mockingbird', 'Harper Lee', 1960),
    Book('The Great Gatsby', 'F. Scott Fitzgerald', 1925),
  ];

  // Access and print each book's attributes
  for (var book in books) {
    print('Title: ${book.title}, Author: ${book.author}, Year: ${book.publishedYear}');
  }
}
