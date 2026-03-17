class Note {
  final String title;
  final String content;
  final DateTime createdDate;

  Note(this.title, this.content) : createdDate = DateTime.now();

  @override
  String toString() {
    return '''
Title: $title
Content: $content
Created: ${createdDate.toLocal()}
''';
  }
}

class NotesApp {
  List<Note> _notes = [];
  void createNote(String title, String content) {
    _notes.add(Note(title, content));

    print("Note added successfully!\n");
  }

  void listNotes() {
    if (_notes.isEmpty) {
      print("No notes available.\n");
      return;
    }

    for (var note in _notes) {
      print(note);
    }
  }

  void searchNote(String title) {
    var results = _notes.where(
      (note) => note.title.toLowerCase() == title.toLowerCase(),
    );
    if (results.isEmpty) {
      print("No note found with title '$title'.\n");
    } else {
      for (var note in results) {
        print(note);
      }
    }
  }
}
