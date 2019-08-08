import 'package:flutter/material.dart';

class Camera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            child: Icon(
              Icons.error,
              size: 100.0,
              color: Color(0xFFDDDDDD),
            ),
          ),
          Text(
            'Error on load camera',
            style: TextStyle(
              fontSize: 22.0,
              color: Color(0xFFDDDDDD),
            ),
          )
        ],
      ),
    );
  }
}