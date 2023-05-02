import 'package:flutter/material.dart';
import 'package:stock_management/screens/future_builder.dart';
import 'package:stock_management/screens/homepage.dart';
import 'package:stock_management/screens/homepage1.dart';
import 'package:stock_management/screens/my_stocks.dart';
import 'package:stock_management/screens/screen3.dart';

import 'screens/splash_scrren.dart';

void main() => runApp(StockManagement());

class StockManagement extends StatelessWidget {
  const StockManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      initialRoute: ApiCalling.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        Homepage.routeName: (context) => Homepage(),
        MyStocks.routeName: (context) => MyStocks(),
        Homepage1.routeName: (context) => Homepage1(),
        Screen3.routeName: (context) => Screen3(),
        ApiCalling.routeName: (context) => ApiCalling(),
      },
    );
  }
}
