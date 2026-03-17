void main() {
  bool ispalindrome(String s) {
    s = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
    return s.split('').reversed.join('') == s;
  }
}
