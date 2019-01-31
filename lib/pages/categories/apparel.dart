import 'package:flutter/material.dart';

class ApparelCreatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Apparel'),
        ),
        body: new Card(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Image.asset('assets/storefront.jpg'),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text('Sterre', style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),),
              ),
              Text('Stapleton, Denver'),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    'Inspired by the independent boutiques of Europe and the travels of founder Danielle van Ede, Sterre offers a rotating selection of quality items for fashion-forward women.',
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
