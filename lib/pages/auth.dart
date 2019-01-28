import 'package:flutter/material.dart';

import './businesses.dart';
import './loginPage.dart';
import './signup.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        decoration: new BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.5, 0.7, 0.9],
          colors:[
            Colors.orangeAccent[100],
            Colors.yellow[200],
            Colors.teal[100],
            Colors.teal[200]
          ]
        ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/logo.png',
                width: 350.0,
                height: 600.0,            
              ),
              // Container(
              //   padding: EdgeInsets.all(5.0),
              // ),
              Container(
                // padding: EdgeInsets.all(1.0),
                child: RaisedButton(
                  child: Text('LOGIN', style: TextStyle(fontSize: 20.0, color: Colors.red[900])),
                  elevation: 8.0,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0))
                  ),
                  color: Theme.of(context).accentColor,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                ),
              ),
              SizedBox(height: 25.0),              
              Container(
                // padding: EdgeInsets.all(1.0),
                child: RaisedButton(
                  child: Text('SIGN UP', style: TextStyle(fontSize: 20.0, color: Colors.red[900])),
                  elevation: 8.0,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0))
                  ),
                  color: Theme.of(context).accentColor,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/signup');
                  },
                ),
              )
            ],
          ),
        ));
  }
}
