import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:stock_management/screens/homepage1.dart';
import 'package:stock_management/screens/stock_card.dart';
import 'package:stock_management/widgets/mystock_list.dart';

class MyStocks extends StatelessWidget {
  static final routeName = '/MyStocks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.bottomCenter,
                        height: 230,
                        color: Color.fromARGB(255, 14, 104, 179),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 120,
                    left: 15,
                    right: 15,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          StockCard('Total Avliabele Stocks', Icons.add_card,
                              '275 Stock Left'),
                          SizedBox(
                            height: 20,
                          ),
                          DottedLine(
                            dashGapColor: Colors.white,
                            lineThickness: 2,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          StockCard(
                              'Total Customers', Icons.add_a_photo, '200'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My Stock',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Show All',
                      style: TextStyle(
                          decoration: TextDecoration.underline, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  MyStockList(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue.shade900,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pushNamed(context, Homepage1.routeName);
        },
      ),
    );
  }
}
