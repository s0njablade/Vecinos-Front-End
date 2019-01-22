import 'package:flutter/material.dart';

class Businesses extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return null;
  }
}

class _BusinessManagerState extends State<ProductManager> {
    List<String> _businesses = ['Store Tester'];
  @override
  Widget Build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        onPressed: () {
          setState(() {
            _businesses.add('More info');
          });
        },
        child: Text('test test'),
      ),
    );
  }
}
