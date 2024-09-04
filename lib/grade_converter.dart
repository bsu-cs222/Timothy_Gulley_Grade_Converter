class GradeConverter {
  String letterGrade(int numericGrade) {
    if (numericGrade < 0 || numericGrade > 100) {}
    if (numericGrade >= 90) return 'A';
    if (numericGrade >= 80) return 'B';
    if (numericGrade >= 70) return 'C';
    if (numericGrade >= 60) return 'D';
    return 'F';
  }
}
