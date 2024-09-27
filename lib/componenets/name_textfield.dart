import 'package:flutter/material.dart';

class NameTextfield extends StatelessWidget {
  final String? hintText;
  TextEditingController controller = TextEditingController();
  NameTextfield({
    super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.grey.withOpacity(.15),
                          height: 42,
        child:  TextField(
          controller: controller,
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
