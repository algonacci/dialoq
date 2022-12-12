import 'package:dialoq/provider/question_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<QuestionProvider>(
      create: (context) => QuestionProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Pertanyaan Ya dan Tidak',
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
                    Consumer<QuestionProvider>(
                      builder: (context, questionProvider, _) =>
                          GestureDetector(
                        onTap: () {
                          questionProvider.isTrue = true;
                        },
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: questionProvider.trueColor,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Iya',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: questionProvider.trueColor,
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
                    Consumer<QuestionProvider>(
                      builder: (context, questionProvider, _) =>
                          GestureDetector(
                        onTap: () {
                          questionProvider.isTrue = false;
                        },
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: questionProvider.falseColor,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Tidak',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: questionProvider.falseColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
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
