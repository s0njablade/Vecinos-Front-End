import 'package:flutter/material.dart';

import '../businesses.dart';
import './poc.dart';
import './women.dart';
import './lgbtq.dart';


class CommunityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Filter'),
            ),
            ListTile(
              title: Text('Businesses'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => BusinessesPage()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Community'),
        bottom: TabBar(
          tabs: <Widget>[
          Tab(
            text: 'Women Owned'),
          Tab(text: 'LGTBQ Owned'),
          Tab(text: 'POC Owned'),
        ],),
      ),
      body: TabBarView(
        children: <Widget>[
          WomenCreatePage(),
          LGBTQCreatePage(),
          POCCreatePage()
        ],
      ),),
    );
  }
}
