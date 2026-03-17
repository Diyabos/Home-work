/**
 Q5
  Create a class Course with attributes title and duration
   (default = 3 months). Create two courses: one with custom
    duration and one with the default. Print both.
 */
class course {
  String? title;
  int? duration;
  course(String title, [int duration = 3]) {
    this.title = title;
    this.duration = duration;
  }
}

void main() {
  course course1 = course("flutter", 4);
  course course2 = course("dart programming");
  print("course ${course1.title} duration ${course1.duration}");
  print("course ${course2.title} duration ${course2.duration}");
}
