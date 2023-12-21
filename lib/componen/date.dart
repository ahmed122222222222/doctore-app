import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class MyTextFielddd extends StatefulWidget {
  @override
  _MyTextFieldddState createState() => _MyTextFieldddState();
}

class _MyTextFieldddState extends State<MyTextFielddd> {
  late DateTime _selectedDate=DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2),
              borderSide: BorderSide(
                style: BorderStyle.solid,
                color: Colors.white,
              ),
            ),
          suffixIcon: GestureDetector(
            onTap: () {

              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1900),
                lastDate: DateTime(2100),
              ).then((value) {
                if (value != null) {
                  setState(() {
                    _selectedDate = value;
                  });
                }
              });
            },
            child: Icon(Icons.calendar_today),
          ),
        ),
        readOnly: true,
        controller: TextEditingController(
            text: _selectedDate == null
                ? 'Select a Date'
                : DateFormat.yMMMd().format(_selectedDate)),
        // Other properties for the TextField
        // ...
        // ...
      ),
    );
  }
}