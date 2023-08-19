import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final TextInputType type;
  final IconData icon;
  final TextEditingController control;
  const CustomTextField(
      {super.key,
      required this.control,
      required this.text,
      required this.type,
      required this.icon});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextFormField(
        controller: control,
        keyboardType: type,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          prefixIcon: Icon(icon),
          hintText: text,
          hintStyle: const TextStyle(fontSize: 20),
        ),
        validator: (data) {
          if (data!.isEmpty) {
            return ('Invalid value');
          }
          return null;
        },
      ),
    );
  }
}
