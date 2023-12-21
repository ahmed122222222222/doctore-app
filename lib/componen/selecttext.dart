import 'package:flutter/material.dart';

class LocationDropdownTextField extends StatefulWidget {
  final List<String> options;
  final String initialValue;
  final void Function(String) onChanged;
  final String label;
  final IconData icom;
  LocationDropdownTextField(
      {Key? key,
      required this.options,
      required this.initialValue,
      required this.onChanged,
      required this.label,
      required this.icom})
      : super(key: key);

  @override
  _LocationDropdownTextFieldState createState() =>
      _LocationDropdownTextFieldState();
}

String? cityname="cairo";

class _LocationDropdownTextFieldState extends State<LocationDropdownTextField> {
  String? selectedOption;

  @override
  void initState() {
    super.initState();
    selectedOption = widget.initialValue;
    cityname=widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TextField(
        decoration: InputDecoration(
          labelText: widget.label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2),
            borderSide: BorderSide(
              style: BorderStyle.solid,
              color: Colors.white,
            ),
          ),
          suffixIcon: GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Container(
                      width: double.maxFinite,
                      child: DropdownButton<String>(
                        value: selectedOption,
                        items: widget.options.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedOption = newValue;
                            widget.onChanged(newValue!);
                            cityname = newValue;
                          });
                        },
                      ),
                    ),
                  );
                },
              );
            },
            child: Icon(widget.icom),
          ),
        ),
        readOnly: false,
        controller: TextEditingController(text: selectedOption ?? ''),
      ),
    );
  }
}
