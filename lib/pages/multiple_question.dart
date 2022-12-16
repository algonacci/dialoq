import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/question_provider.dart';

class MultipleQuestionPage extends StatelessWidget {
  const MultipleQuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MultipleQuestionProvider>(
      create: (context) => MultipleQuestionProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Pilihan Berganda',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                    Consumer<MultipleQuestionProvider>(
                      builder: (context, multipleQuestionProvider, _) =>
                          GestureDetector(
                        onTap: () => multipleQuestionProvider.isSelected = true,
                        child: Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: multipleQuestionProvider.selectedColor,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      fillColor: Color(0xffF1F0F5),
                                      hintText: 'Masukkan Pertanyaan',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Consumer<MultipleQuestionProvider>(
                      builder: (context, multipleQuestionProvider, _) =>
                          GestureDetector(
                        onTap: () =>
                            multipleQuestionProvider.isSelected = false,
                        child: Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: multipleQuestionProvider.notSelectedColor,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      fillColor: Color(0xffF1F0F5),
                                      hintText: 'Masukkan Pertanyaan',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Consumer<MultipleQuestionProvider>(
                      builder: (context, multipleQuestionProvider, _) =>
                          GestureDetector(
                        onTap: () =>
                            multipleQuestionProvider.isSelected = false,
                        child: Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: multipleQuestionProvider.notSelectedColor,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      fillColor: Color(0xffF1F0F5),
                                      hintText: 'Masukkan Pertanyaan',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Consumer<MultipleQuestionProvider>(
                      builder: (context, multipleQuestionProvider, _) =>
                          GestureDetector(
                        onTap: () =>
                            multipleQuestionProvider.isSelected = false,
                        child: Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: multipleQuestionProvider.notSelectedColor,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      fillColor: Color(0xffF1F0F5),
                                      hintText: 'Masukkan Pertanyaan',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
