import 'book.dart';

/*
 Q5
 Create a class Book with private fields _title and _pages.
 - Add setters: reject empty titles and pages ≤ 0.- Add a getter
 title and a computed getter readingTime that assumes 2 minutes
  per page.- In main(), create a book, print its title and
   estimated reading time.
 */
void main() {
  Book book = Book();
  book.title = "the land of the lowly";
  book.pages = 75;
  print("the book ${book.title} could be finished in ${book.readingTime} mins");
}
