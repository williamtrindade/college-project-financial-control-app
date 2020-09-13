import 'package:app/screens/posting/list_item.dart';
import 'package:app/screens/posting/posting_create.dart';
import 'package:app/widgets/assets.dart';
import 'package:flutter/material.dart';

class PostingListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color(0xff27FF30),
          title: Text(
            'Lançamentos',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: ListView.builder(
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(5),
                        child: Material(
                          elevation: 3,
                          child: ListItem(
                              qtt: "R\$ 50,00",
                              date: "22/10/2020",
                              category: "Mercado",
                              onDelete: () => {}),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
        floatingActionButton: Assets.roundedFloatButton(
            icon: Icons.add,
            onPressed: () => {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PostingCreateScreen()))
                }));
  }
}
