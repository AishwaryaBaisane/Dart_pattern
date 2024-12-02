
// Create a class LibraryItem with properties:
// itemId
// title
// Create two subclasses Book and DVD that inherit LibraryItem.

// Book should have additional properties author and numPages.
// DVD should have additional properties director and duration.
// Demonstrate polymorphism by overriding a method getItemDetails() that displays details of the item.

import 'dart:io';

class LibraryItem
{
  int itemId = 0;
  String title = '';

  LibraryItem(this.itemId,this.title);

  void getItemDetails()
  {
     print('Iteam Id : ${itemId}');
    print('Title : ${title}');
  }
}

class Book extends LibraryItem
{
  String author = '';
  int numPages = 0;
  

  Book(int itemId, String title, this.author, this.numPages) : super(itemId, title);

  @override
  void getItemDetails() {
    super.getItemDetails();
    print("Author: $author");
    print("Number of Pages: $numPages");
  }


}
class DVD extends LibraryItem
{
   String director = '';
   int duration = 0;

   DVD(int itemId, String title,this.director,this.duration) : super(itemId, title);
   @override
  void getItemDetails() {
    super.getItemDetails();
    print("director: $director");
    print("duration: $duration");
  }

}

void main()
{
  int itemId = 0;
  String title = '';
   
  String author = '';
  int numPages = 0; 

  
   String director = '';
   int duration = 0;


   stdout.write('Enter Book id :');
    itemId = int.parse(stdin.readLineSync()!);

     stdout.write('Enter title  :');
    title = stdin.readLineSync()!;

     stdout.write('Enter author :');
    author =stdin.readLineSync()!;


     stdout.write('Enter numPages :');
    numPages = int.parse(stdin.readLineSync()!);


     stdout.write('Enter director :');
    director = stdin.readLineSync()!;


     stdout.write('Enter duration :');
    duration = int.parse(stdin.readLineSync()!);
 
     Book book = Book(itemId,title,author,numPages);
     book.getItemDetails();


     DVD dvd = DVD(itemId, title, director, duration);
     dvd.getItemDetails();




   
}

























































































































