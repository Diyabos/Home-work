/**
 Q7
 Create a program with the scores[10, 0, 20, 30].
 Ignore the zeros, add the other numbers together, and print the
 total
 */
void main() {
  List<int> scores = [10, 0, 20, 30];
  // Ignore zeros
  List<int> filteredScores = scores.where((score) => score != 0).toList();
  // Add remaining numbers
  int total = filteredScores.reduce((a, b) => a + b);
  print("Total: $total");
}
