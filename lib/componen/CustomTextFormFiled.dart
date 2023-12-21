import 'package:flutter/material.dart';

class CustomTextformFiled extends StatelessWidget {
  CustomTextformFiled({
    Key? key,
    required this.labelText,
    required this.onChanged,
    required this.rt
  }) : super(key: key);
  String labelText;
  bool rt;
  void Function()? onTap;
  void Function(String)? onChanged;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      obscureText: rt,
      controller: controller,
      onChanged: onChanged,
      validator: (data) {
        if (data!.isEmpty ?? true) {
          return "the filed is required ";
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(fontSize: 12, color: Colors.black45),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                  color: Colors.blueAccent.withOpacity(.5),
                  style: BorderStyle.solid))),
    );
  }
}
