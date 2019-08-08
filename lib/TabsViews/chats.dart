import 'package:flutter/material.dart';
import 'package:whatsapp_layout/widgets/chat.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Column(
            children: <Widget>[
              Chat('lib/assets/images/person.jpeg', 'Japinha do Google', 'Olá', '10:47', 1, false, false),
              Chat('lib/assets/images/person3.jpg', 'Einsten', 'Eis a questão', '00:38', 0, true, false),
              Chat('lib/assets/images/person2.jpg', 'Mina do google', 'Nada a declarar', 'Yesterday', 0, true, true),
            ],
          )
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15.0),
              child: FloatingActionButton(
                onPressed: null,
                backgroundColor: Theme.of(context).accentColor,
                child: Icon(
                  Icons.chat,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}