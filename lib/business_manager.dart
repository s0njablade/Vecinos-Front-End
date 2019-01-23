import 'package:flutter/material.dart';

import './businesses.dart';

class BusinessManager extends StatefulWidget {
  final String firstBusiness;

  BusinessManager(this.firstBusiness){
      print('[ProductManager Widget] createState()');
  }

  @override
  State<StatefulWidget> createState() {
    return _BusinessManagerState();
  }
}

class _BusinessManagerState extends State<BusinessManager> {
    List<String> _businesses = [];

    @override
      void initState() {
            print('[ProductManager State] initState()');
        super.initState();
        _businesses.add(widget.firstBusiness);
      }

  @override
  Widget build(BuildContext context) {
    print('[ProductManager State] build()');
    return Column (children: [Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        onPressed: () {
          setState(() {
            _businesses.add('More info');
          });
        },
        child: Text('test test'),
      ),
    ),
    Businesses(_businesses)
    ],);
  }
}
