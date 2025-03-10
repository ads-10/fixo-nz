import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {

  const SkipButton({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, '/user_role');
        },
      style: TextButton.styleFrom(
        foregroundColor: Colors.black, // Text color
        padding: EdgeInsets.zero, // Removes default padding
        shape: null, // No shape/background
      ),
      child: Text(
        'Skip',
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
