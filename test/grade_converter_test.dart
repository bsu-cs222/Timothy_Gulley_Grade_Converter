import 'package:grade_converter/grade_converter.dart';
import 'package:test/test.dart';

final data = {
  95: 'A',
  90: 'A',
  85: 'B',
  80: 'B',
  75: 'C',
  70: 'C',
  65: 'D',
  60: 'D',
  50: 'F',
  0: 'F',
  101: 'Invalid',
  -1: 'Invalid',
};

void main() {
  final gradeConverter = GradeConverter();

  for (var grade in data.keys) {
    final expected = data[grade];
    test('Expect $grade to be $expected', () {
      final result = gradeConverter.LetterGrade(grade);
      expect(result, expected);
    });
  }
}
