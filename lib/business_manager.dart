import 'package:flutter/material.dart';

import './businesses.dart';
import './button_control.dart';

class BusinessManager extends StatefulWidget {
  final String firstBusiness;

  BusinessManager({this.firstBusiness}) {
    print('[ProductManager Widget] Constructor()');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ProductManager Widget] createState()');
    return _BusinessManagerState();
  }
}

class _BusinessManagerState extends State<BusinessManager> {
  List<String> _businesses = [];

  @override
  void initState() {
    print('[ProductManager State] initState()');
    if (widget.firstBusiness != null) {
      _businesses.add(widget.firstBusiness);
    }
    super.initState();
  }

  @override
  void didUpdateWidget(BusinessManager oldWidget) {
    print('[ProductManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  void _addBusinesses(String business) {
    setState(() {
      _businesses.add(business);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductManager State] build()');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ButtonControl(_addBusinesses),
        ),
        Expanded(child: Businesses(_businesses))
      ],
    );
  }
}
