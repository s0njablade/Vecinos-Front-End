import 'package:flutter/material.dart';

class Businesses extends StatelessWidget {
  final List<String> businesses;

  Businesses(this.businesses); 

  @override
    Widget build(BuildContext context) {
      return Column(
        children: _businesses
            .map((element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/city.jpg'),
                      Text(element)
                    ],
                  ),
                ))
            .toList(),
      );
    }
  }
              
  