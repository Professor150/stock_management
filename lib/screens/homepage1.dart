import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:stock_management/screens/screen3.dart';

class Homepage1 extends StatelessWidget {
  static const routeName = '/Homepage1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        title: Text(
          'Add Stock',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade100,
            ),
            height: 40,
            width: 50,
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 25,
            ),
          ),
          onPressed: () {},
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Stock Name'),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Type here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            Text('Size/Unit'),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 10,
            ),
            Text('Unit Price (NRS)'),
            SizedBox(
              height: 10,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Stock Quantity',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 10,
            ),
            Text('Unit Price (NRS)'),
            SizedBox(
              height: 10,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'eg 250',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ElevatedButton(
          child: Text('SAVE STOCK'),
          onPressed: () {
            Navigator.pushNamed(context, Screen3.routeName);
          },
        ),
      ),
    );
  }
}
