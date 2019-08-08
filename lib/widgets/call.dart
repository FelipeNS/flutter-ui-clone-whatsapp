import 'package:flutter/material.dart';

class Call extends StatelessWidget {

  String image;
  String name;
  String date;
  int direction;
  int type;
  bool last;

  Call(this.image, this.name, this.date, this.direction, this.type, this.last);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(this.image),
                  radius: 28.0,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 15.0, 0, 15.0),
                  margin: EdgeInsets.only(right: 15.0),
                  decoration: !this.last ? BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xFFDDDDDD),
                        width: 0.5,
                      ),
                    ),
                  ) : null,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 5.0),
                            child: Text(
                              this.name,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                              )
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              this.direction == 0 ? Icon(
                                Icons.call_received,
                                color: Colors.red,
                                size: 18.0,
                              ) : Icon(
                                Icons.call_made,
                                color: Colors.green,
                                size: 18.0,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5.0),
                                child: Text(
                                  this.date,
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Color(0xFF999999),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          this.type == 1 ? Icon(
                            Icons.videocam,
                            size: 26.0,
                            color: Color(0xFF085F61),
                          ) : Icon(
                            Icons.call,
                            size: 26.0,
                            color: Color(0xFF085F61),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}