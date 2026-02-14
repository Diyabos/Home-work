/**
 Given two strings s and t, return true if t is an anagram of s,
  and false otherwise.
 */
bool isAnagram(String s, String t) {
  if (s.length != t.length) return false;
  Map<String, int> sCount = {};
  Map<String, int> tCount = {};
  for (int i = 0; i < s.length; i++) {
    String sChar = s[i];
    String tChar = t[i];
    sCount[sChar] = (sCount[sChar] ?? 0) + 1;
    tCount[tChar] = (tCount[tChar] ?? 0) + 1;
  }
  for (int i = 0; i < t.length; i++) {
    String tChar = t[i];
    if (sCount[tChar] != tCount[tChar]) {
      return false;
    }
  }
  return true;
}

void main() {
  print(isAnagram("listen", "silent")); // true
  print(isAnagram("hello", "world")); // false
}
