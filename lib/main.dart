import 'package:flutter/material.dart';
import 'package:grade_converter/grade_converter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(body: GradeConverterWidget()),
    );
  }
}

class GradeConverterWidget extends StatefulWidget {
  const GradeConverterWidget({super.key});

  @override
  State<GradeConverterWidget> createState() => _GradeConverterWidgetState();
}

class _GradeConverterWidgetState extends State<GradeConverterWidget> {
  final TextEditingController _controller = TextEditingController();
  String _message = 'Answer goes here';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
            style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            'Enter your number grade'),
        TextField(
          style: TextStyle(color: Colors.deepPurple),
          controller: _controller,
        ),
        ElevatedButton(
          onPressed: _onButtonPressed,
          child: const Text('Press me'),
        ),
        Text(_message),
      ],
    );
  }

  void _onButtonPressed() {
    setState(() {
      GradeConverter converter = GradeConverter();
      int grade = int.parse(_controller.text);
      String convertToLetterGrade = converter.convertToLetterGrade(grade);
      _message = convertToLetterGrade;
    });
  }
}
