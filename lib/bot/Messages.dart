import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  final List messages;
  const MessagesScreen({Key? key, required this.messages}) : super(key: key);

  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return ListView.separated(
        //controller: _scrollController,
        itemBuilder: (context, index) => widget.messages[index]['isUserMessage']
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("10:22"),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        )),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: w * 1 / 2),
                      child: Text(
                        widget.messages[index]['message'].text.text[0],
                        style: TextStyle(height: 1.5),
                      ),
                    ),
                  )
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Image.asset(
                          "assets/nadd_logo.png",
                          width: 30,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Color(0xffDDEDF9),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            )),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: w * 1 / 2),
                          child: Text(
                            widget.messages[index]['message'].text.text[0],
                            style: TextStyle(height: 1.5),
                          ),
                        ),
                      )
                    ],
                  ),
                  Text("10:22"),
                ],
              ),
        separatorBuilder: (_, i) =>
            const Padding(padding: EdgeInsets.only(top: 10)),
        itemCount: widget.messages.length);
  }
}
