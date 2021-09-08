import 'package:flutter/material.dart';

class LanguageDropDown extends StatefulWidget {
  LanguageDropDown({
    Key? key,
    required this.onChanged,
    required this.languageDropdownValue,
  }) : super(key: key);

  Function(String? lang) onChanged;
  String languageDropdownValue;

  @override
  _LanguageDropDownState createState() => _LanguageDropDownState();
}

class _LanguageDropDownState extends State<LanguageDropDown> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        dropdownColor: Colors.grey[300],
        value: widget.languageDropdownValue,
        style: TextStyle(color: Colors.blue[500]),
        onChanged: widget.onChanged,
        items: <String>[
          'English-UK',
          'English-US',
          'English-IN',
          'Turkish',
          'Deutch',
          'French',
          'Arabic',
        ].map<DropdownMenuItem<String>>(
          (String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          },
        ).toList(),
      ),
    );
  }
}