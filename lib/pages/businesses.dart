import 'package:flutter/material.dart';

import '../business_manager.dart';

class BusinessesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Vecinos'),
        ),
        body: BusinessManager(),
      );
  }
}
