import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 0.5,
                              color: Color(0xFFCCCCCC),
                            ),
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(15.0),
                              child: Stack(
                                children: <Widget>[
                                  CircleAvatar(
                                    backgroundImage: AssetImage('lib/assets/images/person4.jpg'),
                                    radius: 28,
                                  ),
                                  Container(
                                    width: 22.0,
                                    height: 22.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(11.0),
                                      color: Theme.of(context).accentColor,
                                    ),
                                    margin: EdgeInsets.fromLTRB(36.0, 36.0, 0, 0),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        size: 20.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(bottom: 5.0),
                                        child: Text(
                                          'My status',
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Tap to add status update',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Color(0xFF999999),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  color: Color(0xFFEEEEEE),
                  height: 40.0,
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Viewed updates',
                          style: TextStyle(
                            color: Color(0xFF888888),
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(15.0),
                            padding: EdgeInsets.all(0.5),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFAAAAAA),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(30.0)
                            ),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('lib/assets/images/status.jpg'),
                              radius: 28,
                            ),
                          ),
                          Expanded(
                            child: Container(
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(bottom: 5.0),
                                        child: Text(
                                          'Japinha do Google',
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Today, 1:24 PM',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          color: Color(0xFF999999),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 48.0,
                      height: 48.0,
                      child: FloatingActionButton(
                        backgroundColor: Color(0xFFEEEEEE),
                        child: Center(
                          child: Icon(
                            Icons.edit,
                            color: Color(0xFF085F61),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: FloatingActionButton(
                        backgroundColor: Theme.of(context).accentColor,
                        child: Center(
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}