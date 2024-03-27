import 'package:leetcodesolutions/5_longest_palindrom/main.dart';
import 'package:test/test.dart';

void main() {
  test('Example 1 ', () {
    String input = 'babad';
    List<String> expectedOutPuts = ['aba', 'bab'];
    final solution = Solution();
    final output = solution.longestPalindrome(input);
    final answer = expectedOutPuts.contains(output);
    expect(answer, true);
  });

  test('Example 2', () {
    String input = 'cbbd';
    List<String> expectedOutPuts = ['bb'];
    final solution = Solution();
    final output = solution.longestPalindrome(input);
    final answer = expectedOutPuts.contains(output);
    expect(answer, true);
  });
}
