import 'package:flutter/material.dart';

import './pages/auth.dart';
import './pages/communities/community.dart';
import './pages/neighborhoods/neighborhoods.dart';
import './pages/categories/category.dart';
import './pages/businesses.dart';
import './pages/loginPage.dart';
import './pages/signup.dart';
import './pages/businessList.dart';
import './pages/businessAdmin.dart';
import './pages/communities/woman.dart';
import './pages/neighborhoods/nbusinesses.dart';
import './pages/save.dart';
import './pages/serializer.dart';

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
  List<Map<String, dynamic>> businesses = [];

  void businessListPage(Map<String, dynamic> business) {
    setState(() {
      businesses.add(business);
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
        '/businesses': (BuildContext context) => BusinessAdmin(),
        '/community': (BuildContext context) => CommunityPage(),
        '/woman':(BuildContext context) => WomanPage(),
        '/neighborhoods': (BuildContext context) => NeighborhoodPage(),
        '/neighborhood':(BuildContext context) => NBusinessesCreatePage(),
        '/categories': (BuildContext context) => CategoryPage(),
      }
      
    );
    }
}