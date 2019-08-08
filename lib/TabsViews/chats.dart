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
              Chat('lib/assets/images/person.jpeg', 'Japinha do Google', 'Olá', '10:47', 1, false),
              Chat('lib/assets/images/person3.jpg', 'Einsten', 'Eis a questão', '00:38', 0, true),
              Chat('lib/assets/images/person2.jpg', 'Mina do google', 'Nada a declarar', 'Yesterday', 0, true),
            ],
          )
        ),
      ],
    );
  }
}