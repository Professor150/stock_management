import 'package:flutter/material.dart';

class MyStockList extends StatelessWidget {
  final TextEditingController _seachController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: TextField(
            controller: _seachController,
            decoration: InputDecoration(
              hintText: 'Search Stocks',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        Column(
          children: List.generate(10, (index) {
            var stocks = 170;
            return Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
              ),
              child: ListTile(
                title: Text(
                  'Stock Name ${index + 1}',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text('Rs ${205 + index}'),
                trailing: Text(
                  '${stocks + index} Left',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
