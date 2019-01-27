import 'package:flutter/material.dart';

import './businesses.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SIGN UP WITH EMAIL'),
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
                  decoration: InputDecoration(labelText: 'First Name'),
                  keyboardType: TextInputType.text,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,
                ),
                SizedBox(height: 10.0),
                RaisedButton(
                  child:
                      Text('Create Account', style: TextStyle(color: Colors.red[900])),
                  elevation: 8.0,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0))),
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
