import 'package:flutter/material.dart';

class OtherCreatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Other'),
        ),
        body: new Card(
            elevation: 8.0,
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/pandora.jpg'),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Pandora on the Hill',
                      style: TextStyle(
                          fontSize: 26.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text('Uptown, Denver'),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Text('We truly are locals who love locals locally.',
                        textAlign: TextAlign.center),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: RaisedButton(
                      color: Theme.of(context).accentColor,
                      child: Text('About',
                          style: TextStyle(color: Colors.red[900])),
                      elevation: 8.0,
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7.0))),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/businesses');
                      },
                    ),
                  )
                ])));
  }
}
