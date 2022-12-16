import 'package:flutter/material.dart';

class ChatRoomPage extends StatefulWidget {
  const ChatRoomPage({Key? key}) : super(key: key);

  @override
  State<ChatRoomPage> createState() => _ChatRoomPageState();
}

class _ChatRoomPageState extends State<ChatRoomPage> {
  TextEditingController msg = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 14,
                ),
                child: Text(
                  'Ngobrol',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 600,
                child: ShowMessages(),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 14,
                      ),
                      child: TextField(
                        controller: msg,
                        decoration: const InputDecoration(
                          hintText: 'Masukkan Pesan',
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // if (msg.text.isNotEmpty) {
                      //   storeMessage.collection("Messages").doc().set({
                      //     "messages": msg.text.trim(),
                      //     "user": loginUser!.email.toString(),
                      //     "time": DateTime.now(),
                      //   });
                      //   msg.clear();
                      // }
                    },
                    icon: const Icon(
                      Icons.send,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ShowMessages extends StatelessWidget {
  const ShowMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 0,
      shrinkWrap: true,
      primary: true,
      itemBuilder: (context, i) {
        return ListTile(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.amber.withOpacity(
                    0.1,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('messages'),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'user',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
