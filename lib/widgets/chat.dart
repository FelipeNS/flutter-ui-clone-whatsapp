import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  String image;
  String name;
  String lastMessage;
  String date;
  int messages;
  bool read;
  bool last;

  Chat(this.image, this.name, this.lastMessage, this.date, this.messages, this.read, this.last);
  
  bool notNull(Object o) => o != null;

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
                  padding: EdgeInsets.only(
                    top: 15.0,
                    bottom: 15.0,
                  ),
                  decoration: !this.last ? BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xFFDDDDDD),
                        width: 0.5,
                      ),
                    ),
                  ) : null,
                  margin: EdgeInsets.only(right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                              this.name,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            margin: EdgeInsets.only(bottom: 5.0),
                          ),
                          Container(
                            child: Text(
                              this.lastMessage,
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color(0xFF999999)
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              top: 4.0,
                              bottom: 5.0,
                            ),
                            child: Text(
                              this.date,
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Color(0xFF888888),
                              ),
                            ),
                          ),
                          !this.read ? Container(
                            width: 20.0,
                            height: 20.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Theme.of(context).accentColor,
                            ),
                            child: Center(
                              child: Text(
                                this.messages.toString(),
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ) : null,
                        ].where(notNull).toList(),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ),
      ],
    );
  }
}