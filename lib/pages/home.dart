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
            children: const [
              SizedBox(
                height: 50,
              ),
              Button(
                text: "Ngobrol",
                icon: Icons.chat,
              ),
              Button(
                text: "Polling",
                icon: Icons.poll,
              ),
              Button(
                text: "Pertanyaan",
                icon: Icons.help,
              ),
              Button(
                text: "Pilihan Berganda",
                icon: Icons.list_alt,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
