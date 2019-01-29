import 'package:flutter/material.dart';

import '../ui_elements/titleDefault.dart';
import './addressDefault.dart';

class BusinessCard extends StatelessWidget {
final Map<String, dynamic> business;
final int businessIndex;

BusinessCard(this.business, this.businessIndex);

  @override
    Widget build(BuildContext context) {
      
      return Card(
      child: Column(
        children: <Widget>[
          Image.asset(business['image']),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TitleDefault(business['title']),
                SizedBox(
                  width: 8.0,),
              ]
            ),
          ),

          AddressDefault('Capitol Hill, Denver'),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('About', 
                style: TextStyle(fontSize: 20.0, color: Colors.red[900])),
                color: Theme.of(context).accentColor,
                elevation: 8.0,
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0))
                ),
                onPressed: () =>
                  Navigator.pushNamed(
                    context, '/business/' + businessIndex.toString() 
                  )
                  // .then(bool value){};
              ),
            ],
          )
        ],
      ),
    );
    
    }
}