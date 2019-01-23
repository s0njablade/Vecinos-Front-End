import 'package:flutter/material.dart';

class Businesses extends StatelessWidget {
  final List<String> businesses;

  Businesses(this.businesses){
    print('[Products Widget] Constructor');
  } 

  @override
    Widget build(BuildContext context) {
      print('[Products Widget] build()');
      return Column(
        children: businesses
            .map(
              (element) => Card(
                  child: Column(
                    children: <Widget>[
                      // Image.asset('assets/city.jpg'),
                      Text(element)
                    ],
                  ),
                ))
            .toList(),
      );
    }
  }
              
  