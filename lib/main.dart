import 'package:flutter/material.dart';
import 'package:stock_management/screens/homepage.dart';
import 'package:stock_management/screens/my_stocks.dart';

import 'screens/splash_scrren.dart';

void main() => runApp(StockManagement());

class StockManagement extends StatelessWidget {
  const StockManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        Homepage.routeName: (context) => Homepage(),
        MyStocks.routeName: (context) => MyStocks(),
      },
    );
  }
}
