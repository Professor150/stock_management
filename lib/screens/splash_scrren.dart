import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stock_management/screens/homepage.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'my_stocks.dart';

class SplashScreen extends StatefulWidget {
  static final routeName = '/SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  timer(BuildContext context) {
    var timer = Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, MyStocks.routeName);
    });
  }

  @override
  void initState() {
    super.initState();
    timer(context);
  }

  @override
  void dispose() {
    super.dispose();
    timer(context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Text(
              'Welcome To Stoky',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.8),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Center(
              child: Container(
                child: Image.network(
                  'https://png.pngtree.com/png-vector/20200629/ourmid/pngtree-ai-hand-drawn-financial-stock-market-trend-analysis-chart-png-image_2268684.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            CircularProgressIndicator(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Buy And Sell Your Favorites Stocks',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.8,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
