import 'package:flutter/material.dart';

import './pages/business.dart';

class Businesses extends StatelessWidget {
  final List<String> businesses;

  Businesses([this.businesses = const []]) {
    print('Businesses Widget] Constructor');
  }

  Widget _buildBusinessItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/city.jpg'),
          Text(businesses[index]),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('About'),
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => BusinessPage(),
                      ),
                    ),
              )
            ],
          )
        ],
      ),
    ); 
  }

  Widget _buildBusinessList() {
    Widget businessCards;
    if (businesses.length > 0) {
      businessCards = ListView.builder(
        itemBuilder: _buildBusinessItem,
        itemCount: businesses.length,
      );
    } else{
      businessCards = Container();
    }
    return businessCards;
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');
    return _buildBusinessList();
  }
}
