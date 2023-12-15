import 'package:flutter/material.dart';
class roman extends StatefulWidget {
  const roman({super.key});

  @override
  State<roman> createState() => _romanState();
}

class _romanState extends State<roman> {
  final TextEditingController _inputController = TextEditingController();
  int _result = 0;

  int romanToNumber(String roman) {
    final Map<String, int> romanNumerals = {
      'I': 1,
      'II':2,
      ' III':3,
      ' IV':4,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };

    int result = 0;
    int prevValue = 0;
    for (int i = roman.length - 1; i >= 0; i--) {
      final int value = romanNumerals[roman[i]]!;

      if (value < prevValue) {
        result -= value;
      } else {
        result += value;
      }

      prevValue = value;
    }
    return result;
  }

  void _convertRomanToNumber() {
    final inputRoman = _inputController.text;
    final result = romanToNumber(inputRoman);
    setState(() {
      _result = result;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(controller: _inputController,
            decoration: InputDecoration(
              label: Text('Enter Roman No'),
              border: OutlineInputBorder()
            ),

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: _convertRomanToNumber,
                child: Text('Press')),
          ),
          Text('Ans: $_result'),

        ],
      ),

    );
  }
}

