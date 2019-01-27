import 'package:flutter/material.dart';

import './pages/business.dart';

class Businesses extends StatelessWidget {
  final List<Map<String, String>> businesses;

  Businesses([this.businesses = const []]) {
    print('Businesses Widget] Constructor');
  }

  Widget _buildBusinessItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(businesses[index]['image']),
          Text(businesses[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('About'),
                color: Theme.of(context).accentColor,
                elevation: 8.0,
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0))),
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => BusinessPage(
                            businesses[index]['title'],
                            businesses[index]['image']),
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
    } else {
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
