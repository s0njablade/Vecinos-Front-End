import 'package:flutter/material.dart';

class WomanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Women Owned Business'),
            ),
        body: new Card(
            elevation: 8.0,
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Image.asset('assets/Olive-Finch_0.jpg'),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text('Olive & Finch', style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),),
              ),
              Text('Cherry Creek, Denver'),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    'As a locally owned business we’re not just your favorite bistro, we’re your neighbors.',
                    textAlign: TextAlign.center),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: RaisedButton(
                  color: Theme.of(context).accentColor,
                  child:
                      Text('About', style: TextStyle(color: Colors.red[900])),
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
