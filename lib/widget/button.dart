import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final IconData icon;

  const Button({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 200,
      width: 200,
      child: ElevatedButton(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            const SizedBox(
              height: 15,
            ),
            Text(text),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
