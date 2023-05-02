import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'notes.dart';

class ApiCalling extends StatelessWidget {

  static final routeName = '/ApiCalling';
  Future<List<Notess>> fetchNotes() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      Notess(title: 'title1', description: 'description1'),
      Notess(title: 'title2', description: 'description2'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<Notess>>(
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.hasError.toString()),
              );
            } else if (snapshot.data != null) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data![index].title),
                    subtitle: Text(snapshot.data![index].description),
                  );
                },
              );
            } else {
              return Center(
                child: Text('Data Not Avliable'),
              );
            }
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
