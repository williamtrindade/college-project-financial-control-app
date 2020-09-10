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
                child: ListView.builder(itemBuilder: (context, index) {
                  return Container(
                    child: Text('Teste'),
                  );
                }),
              ),
            )
          ],
        ),
        floatingActionButton:
            Assets.roundedFloatButton(icon: Icons.add, onPressed: () => {}));
  }
}
