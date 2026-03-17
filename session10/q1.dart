import 'dart:io';

import 'NoteApp.dart';

/**
 1. Notes App – Organize Your Notes
You are building a simple notes app where users can write and
 manage their notes.- Each note should have a title, some 
content, and the date it was created.- The app should allow
 creating new notes.- The app should allow listing all notes.-
  The app should allow searching for a note by its title
 */
void main() {
  NotesApp app = NotesApp();
  bool running = true;

  while (running) {
    print("===== Notes App =====");
    print("1. Create Note");
    print("2. List Notes");
    print("3. Search Note by Title");
    print("4. Exit");
    stdout.write("Choose an option: ");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write("Enter title: ");
        String? title = stdin.readLineSync();

        stdout.write("Enter content: ");
        String? content = stdin.readLineSync();

        if (title != null && content != null) {
          app.createNote(title, content);
        }
        break;

      case '2':
        app.listNotes();
        break;

      case '3':
        stdout.write("Enter title to search: ");
        String? searchTitle = stdin.readLineSync();

        if (searchTitle != null) {
          app.searchNote(searchTitle);
        }
        break;

      case '4':
        running = false;
        print("Exiting Notes App...");
        break;

      default:
        print("Invalid option. Try again.\n");
    }
  }
}
