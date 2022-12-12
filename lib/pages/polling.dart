import 'package:flutter/material.dart';

class PollingPage extends StatefulWidget {
  const PollingPage({super.key});

  @override
  State<PollingPage> createState() => _PollingPageState();
}

class _PollingPageState extends State<PollingPage> {
  int _firstChoiceCounter = 0;
  int _secondChoiceCounter = 0;

  void _firstIncrementCounter() {
    setState(() {
      _firstChoiceCounter++;
    });
  }

  void _secondIncrementCounter() {
    setState(() {
      _secondChoiceCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Polling'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _firstChoiceCounter = 0;
                _secondChoiceCounter = 0;
              });
            },
            icon: const Icon(
              Icons.replay_sharp,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  fillColor: const Color(0xffF1F0F5),
                  hintText: 'Masukkan Pertanyaan',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(
                      color: Color(0xff2D8CFF),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: _firstIncrementCounter,
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Masukkan Pilihan',
                                ),
                              ),
                            ),
                            Text(
                              '$_firstChoiceCounter',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: _secondIncrementCounter,
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Masukkan Pilihan',
                                ),
                              ),
                            ),
                            Text(
                              '$_secondChoiceCounter',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
