import 'package:flutter/material.dart';

import '../../pages/businesses.dart';
import './businessCard.dart';



class Businesses extends StatelessWidget {
  final List<Map<String, dynamic>> businesses;

  Businesses([this.businesses = const []]) {
    print('Businesses Widget] Constructor');
  }



  Widget _buildBusinessList() {
    Widget businessCards;
    if (businesses.length > 0) {
      businessCards = ListView.builder(
        itemBuilder: (BuildContext context, int index) => 
        BusinessCard(businesses[index], index) ,
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
