import 'package:flutter/material.dart';

import '../business_manager.dart';

class BusinessesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Filter'),
            ),
            ListTile(
              title: Text('Manage'),
              onTap: () {},
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Vecinos'),
      ),
      body: BusinessManager(),
    );
  }
}
