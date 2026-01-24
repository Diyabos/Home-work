void main() {
  int mark = 85;
  String grade;

  // Determine the grade based on the mark
  if (mark >= 90) {
    grade = 'A';
  } else if (mark >= 80) {
    grade = 'B';
  } else if (mark >= 70) {
    grade = 'C';
  } else {
    grade = 'D';
  }
  // Use switch statement to print a message for each grade
  switch (grade) {
    case 'A':
      print('Excellent preformance');
      break;
    case 'B':
      print('Very good job!');
      break;
    case 'C':
      print('Good effort, keep improving');
      break;
    case 'D':
      print('You need to make a bigger effort ');
      break;
    default:
      print('inavild grade');
  }
}
