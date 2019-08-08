import 'package:flutter/material.dart';
import 'package:whatsapp_layout/widgets/call.dart';

class Calls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Call('lib/assets/images/person2.jpg', 'Mina do Google', 'Aug 05, 3:23 PM', 1, 1, false),
                Call('lib/assets/images/person3.jpg', 'Einstein', 'Jul 12, 7:46 AM', 0, 0, true),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15.0),
                child: FloatingActionButton(
                  onPressed: null,
                  backgroundColor: Theme.of(context).accentColor,
                  child: Center(
                    child: Icon(
                      Icons.add_call,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}