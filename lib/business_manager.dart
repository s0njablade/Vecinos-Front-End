import 'package:flutter/material.dart';

import './businesses.dart';
import './button_control.dart';

class BusinessManager extends StatelessWidget {
//   final Map<String, String> firstBusiness;

//   BusinessManager({this.firstBusiness}) {
//     print('[BusinessManager Widget] Constructor()');
//   }

//   @override
//   State<StatefulWidget> createState() {
//     print('[BusinessManager Widget] createState()');
//     return _BusinessManagerState();
//   }
// }

// class _BusinessManagerState extends State<BusinessManager> {
//   List<Map<String, String>> _businesses = [];

//   @override
//   void initState() {
//     print('[BusinessManager State] initState()');
//     if (widget.firstBusiness != null) {
//       _businesses.add(widget.firstBusiness);
//     }
//     super.initState();
//   }

//   @override
//   void didUpdateWidget(BusinessManager oldWidget) {
//     print('[BusinessManager State] didUpdateWidget()');
//     super.didUpdateWidget(oldWidget);
//   }

final List<Map<String, String>> businesses;
final Function addBusiness;

BusinessManager(this.businesses, this.addBusiness);

  @override
  Widget build(BuildContext context) {
    print('[BusinessManager State] build()');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ButtonControl(addBusiness),
        ),
        Expanded(child: Businesses(businesses))
      ],
    );
  }
}
