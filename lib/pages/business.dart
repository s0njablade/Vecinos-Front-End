import 'package:flutter/material.dart';

class BusinessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Not Yo Momma's Pies"),
      ),
      body: Column(
        children: <Widget>[
          Text('Product Page'),
          RaisedButton(
            child: Text('Back'),
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
