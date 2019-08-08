import 'package:flutter/material.dart';
import 'package:whatsapp_layout/TabsViews/calls.dart';
import 'package:whatsapp_layout/TabsViews/camera.dart';
import 'package:whatsapp_layout/TabsViews/chats.dart';
import 'package:whatsapp_layout/TabsViews/status.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        elevation: 0.7,
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20.0),
            child: Icon(Icons.search),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0),
            child: Icon(Icons.more_vert),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt), ),
            Tab(
              child: Container(
                child: Text(
                  'CHATS',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Tab(
              child: Container(
                child: Text(
                  'STATUS',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Tab(
              child: Container(
                child: Text(
                  'CALLS',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Camera(),
            Chats(),
            Status(),
            Calls(),
          ],
        ),
      ),
    );
  }
}