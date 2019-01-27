import 'package:flutter/material.dart';

import './businesses.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      
      return  Scaffold(
        appBar: AppBar(
          title: Text('login'),
        ),
        body: new Container(
          decoration: new BoxDecoration(
          image: new DecorationImage(
          image: new AssetImage('assets/sidewalk.jpg'),
          colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
          fit: BoxFit.cover,
          
          )
        ),
        child: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(decoration: InputDecoration(labelText: 'Password'),
            obscureText: true,
            ),
            SizedBox(height: 10.0),
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
        )
      );
    }
}