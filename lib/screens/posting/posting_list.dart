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
                    return Material(
                      elevation: 20,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            ListTile(
                              onTap: () => {

                              },
                              leading: Text("R\$ 50.00", style: TextStyle(fontSize: 20),),
                              trailing: SizedBox(

                                child: Column(
                                  children: [
                                    Icon(Icons.ac_unit_sharp)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                ),
              ),
            )
          ],
        ),
        floatingActionButton:
            Assets.roundedFloatButton(icon: Icons.add, onPressed: () => {}));
  }
}
