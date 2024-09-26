import 'package:flutter/material.dart';

class NameTextfield extends StatelessWidget {
  final String? hintText;
  const NameTextfield({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.grey.withOpacity(.15),
        height: 40,
        child:  TextField(
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            border: const OutlineInputBorder(),
            fillColor: const Color.fromARGB(255, 81, 98, 150),
          ),
        ),
      ),
    );
  }
}
