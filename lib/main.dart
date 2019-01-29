import 'package:flutter/material.dart';

import './pages/auth.dart';
import './pages/communities/community.dart';
import './pages/neighborhoods/neighborhoods.dart';
import './pages/categories/category.dart';
import './pages/business.dart';
import './pages/businesses.dart';
import './pages/loginPage.dart';
import './pages/signup.dart';
import './widgets/products/businesses.dart';
import './pages/businessList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> _businesses = [];

  void _addBusiness(Map<String, String> business) {
    setState(() {
      _businesses.add(business);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.teal[200],
        accentColor: Colors.orange,
      ),
      home: AuthPage(),
      routes: {
        '/login': (BuildContext context) => LoginPage(),
        '/signup': (BuildContext context) => SignupPage(),
        '/businesses': (BuildContext context) =>BusinessesPage(_businesses),
        '/community': (BuildContext context) => CommunityPage(),
        '/neighborhoods': (BuildContext context) => NeighborhoodPage(),
        '/categories': (BuildContext context) => CategoryPage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[0] != '') {
          return null;
        }
        if (pathElements[1] == 'business') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute(
            builder: (BuildContext context) => BusinessPage(
                _businesses[index]['title'],
                _businesses[index]['image'],
                _businesses[index]['description']
                ),
          );
        }
        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                BusinessesPage(_businesses));
      },
    );
  }
}