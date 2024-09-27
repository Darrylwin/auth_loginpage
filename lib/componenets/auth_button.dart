import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
   AuthButton({
    super.key,
    required this.path,
    required this.auth,
    required onTapMethod
  });
  final String path;
  final String auth;
  void Function()? onTapMethod;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTapMethod,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
              color: Colors.grey,
              style: BorderStyle.solid,
            ),
          ),
          height: 43,
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(path),
              const SizedBox(width: 8),
              Text(
                auth,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
