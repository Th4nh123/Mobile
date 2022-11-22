import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'transaction.dart';

//ListView(child: <Widget>[]) => load all
//ListView(itemBuilder: ...) => load one
// ignore: must_be_immutable
class ListviewDemo extends StatelessWidget {
  List<Transaction> listcard;

  ListviewDemo({required this.listcard});
  /*
  ListView _buildlistview() {
    return ListView.builder(
        itemCount: listcard.length,
        itemBuilder: (context, index) {
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: (index - 1) % 2 == 0 ? Colors.green : Colors.blue,
            child: ListTile(
                leading: const Icon(Icons.access_alarm),
                title: Text(
                  listcard[index].title1,
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
                subtitle: Text(
                  listcard[index].title2,
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
                onTap: () {
                  print("You just have "
                      "${listcard[index].title1}"
                      "${listcard[index].title2}");
                }),
          );
        });
  }
  */

  List<Widget> cardshow() {
    int index = 0;
    return listcard.map((eachtran) {
      index++;
      return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: (index % 2 == 0) ? Colors.green : Colors.blue,
        child: ListTile(
            leading: const Icon(Icons.access_alarm),
            title: Text(
              eachtran.title1,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
            subtitle: Text(
              eachtran.title2,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
            onTap: () {
              print("You just have "
                  "${eachtran.title1}"
                  "${eachtran.title2}");
            }),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: cardshow());
  }
}
