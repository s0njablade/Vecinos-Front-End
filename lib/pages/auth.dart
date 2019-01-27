import 'package:flutter/material.dart';

import './businesses.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        // appBar: AppBar(
        //   title: Text('Login'),
        // ),
        decoration: new BoxDecoration(color: Colors.teal[200]),
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
                  child: Text('Login'),
                  elevation: 8.0,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0))
                  ),
                  color: Theme.of(context).accentColor,
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => BusinessesPage()),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
