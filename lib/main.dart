import 'package:flutter/material.dart';
import 'package:m_pharma/Routes/basket.dart';
import 'package:m_pharma/Routes/profile.dart';
import 'package:m_pharma/main_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const MainTabActivity(),
        routes: {
          '/cart': (context) => const BasketCart(),
          '/profile': (context) => const Profile(),
        });
  }
}
