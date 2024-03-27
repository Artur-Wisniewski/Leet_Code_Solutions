import 'dart:math';

class Solution {
  String longestPalindrome(String s) {
    if (s.length <= 1) return s;
    int leftMaxIndex = 0;
    int rightMaxIndex = 0;

    for (int leftIndex = 0; leftIndex < s.length - 1; leftIndex++) {
      final int evenLength = findLongestPalindromeFromCenter(leftIndex: leftIndex, rightIndex: leftIndex, text: s);
      final int oddLength = findLongestPalindromeFromCenter(leftIndex: leftIndex, rightIndex: leftIndex + 1, text: s);
      final int longestNewLength = max(oddLength, evenLength);
      if(longestNewLength > rightMaxIndex){
        leftMaxIndex = leftIndex - ((longestNewLength - 1) ~/ 2);
        rightMaxIndex = longestNewLength;
      }
    }
    return s.substring(leftMaxIndex, rightMaxIndex + leftMaxIndex);
  }

  int calculateLength({required int leftIndex, required int rightIndex}) => rightIndex - leftIndex - 1;

  int findLongestPalindromeFromCenter({required int leftIndex, required int rightIndex, required String text}) {
    while (leftIndex >= 0 && rightIndex < text.length) {
      final leftSign = text[leftIndex];
      final rightSign = text[rightIndex];
      if (leftSign != rightSign) {
        break;
      }
      leftIndex--;
      rightIndex++;
    }
    return calculateLength(leftIndex: leftIndex, rightIndex: rightIndex);
  }
}
