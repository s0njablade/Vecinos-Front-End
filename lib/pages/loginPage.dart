import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      
      return  Scaffold(
        appBar: AppBar(
          title: Text('login'),
        ),
        body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            TextField(),
            TextField(),
            RaisedButton(
            child: Text('Login', style: TextStyle(color: Colors.red[900])),
            elevation: 8.0,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(7.0))
            ),
            color: Theme.of(context).accentColor,
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/businesses');
              },
            )
          ],
        )
        )
      );
    }
}