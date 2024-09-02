import 'package:grade_converter/grade_converter.dart';
import 'package:test/test.dart';

void main() {
  final gradeConverter = GradeConverter();

  final testCases = {
    100: 'A',
    95: 'A',
    90: 'A',
    85: 'B',
    80: 'B',
    75: 'C',
    70: 'C',
    65: 'D',
    60: 'D',
    59.99: 'F',
    50: 'F',
    0: 'F',
    101: 'Invalid',
    -1: 'Invalid',
  };

  for (var grade in testCases.keys) {
    final expected = testCases[grade];
    test('Expect $grade to be $expected', () {
      final result = gradeConverter.toLetterGrade(grade);
      expect(result, expected);
    });
  }
}
