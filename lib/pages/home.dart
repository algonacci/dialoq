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
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Button(
                    icon: Icons.chat,
                    text: "Ngobrol",
                  ),
                  Button(
                    icon: Icons.poll,
                    text: "Polling",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Button(
                    icon: Icons.help,
                    text: "Pertanyaan",
                  ),
                  Button(
                    icon: Icons.list_alt,
                    text: "Pilihan Berganda",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
