import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Messages.dart';

class ChatBotPage extends StatefulWidget {
  const ChatBotPage({Key? key}) : super(key: key);

  @override
  _ChatBotPageState createState() => _ChatBotPageState();
}

class _ChatBotPageState extends State<ChatBotPage> {
  late DialogFlowtter dialogFlowtter;
  final TextEditingController _controller = TextEditingController();

  List<Map<String, dynamic>> messages = [];

  @override
  void initState() {
    DialogFlowtter.fromFile().then((instance) => dialogFlowtter = instance);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDDEDF9),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xffDDEDF9),
              Color(0xffFFFFFF),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                child: GestureDetector(
                  onTap: () => {Navigator.pop(context)},
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: Color(0xff828282),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 20,
                      width: 60,
                      child: Image(image: AssetImage('assets/nadd_logo.png')),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 10,
                    ),
                    //Greetings
                    Text(
                      'Talk with NADD bot',
                      style: GoogleFonts.roboto(
                          color: Color(0xff4F4F4F),
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      padding: EdgeInsets.only(
                          left: 25, right: 25.0, bottom: 80, top: 10),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/chat_bg.jpg"),
                            colorFilter: ColorFilter.mode(
                              Color(0xff9B51E0).withOpacity(0.1),
                              BlendMode.modulate,
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                      child: MessagesScreen(messages: messages),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        margin: EdgeInsets.only(bottom: 20),
                        height: 50,
                        child: Stack(children: [
                          TextField(
                            controller: _controller,
                            decoration: InputDecoration(
                                fillColor: Colors.grey[100],
                                filled: true,
                                contentPadding: EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide.none),
                                hintText: "Type your message here..."),
                          ),
                          Positioned(
                            right: 8,
                            bottom: 8,
                            child: GestureDetector(
                              onTap: () => {
                                sendMessage(_controller.text),
                                _controller.clear()
                              },
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.purple,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.send,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  sendMessage(String text) async {
    if (text.isEmpty) {
      print('Message is empty');
    } else {
      setState(() {
        addMessage(Message(text: DialogText(text: [text])), true);
      });

      DetectIntentResponse response = await dialogFlowtter.detectIntent(
          queryInput: QueryInput(text: TextInput(text: text)));
      if (response.message == null) return;
      setState(() {
        addMessage(response.message!);
      });
    }
  }

  addMessage(Message message, [bool isUserMessage = false]) {
    messages.add({'message': message, 'isUserMessage': isUserMessage});
  }
}
