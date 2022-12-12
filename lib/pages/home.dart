import 'package:dialoq/widget/button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialoq"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Button(
                    text: "Ngobrol",
                    icon: Icons.chat,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/polling');
                    },
                    child: const Button(
                      text: "Polling",
                      icon: Icons.poll,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/question');
                    },
                    child: const Button(
                      text: "Pertanyaan",
                      icon: Icons.help,
                    ),
                  ),
                  const Button(
                    text: "Pilihan Berganda",
                    icon: Icons.list_alt,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
