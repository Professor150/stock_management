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
        Container(
          height: MediaQuery.of(context).size.height * 0.6,
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                thickness: 1.5,
                color: Colors.black38,
              );
            },
            itemCount: 10,
            itemBuilder: (context, index) {
              var stocks = 170;
              return ListTile(
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
              );
            },
          ),
        ),
      ],
    );
  }
}
