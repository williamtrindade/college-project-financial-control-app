import 'package:app/screens/auth/login.dart';
import 'package:app/screens/posting/posting_list.dart';
import 'package:app/widgets/assets.dart';
import 'package:app/screens/dash/box_card.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff27FF30),
        title: Text('Dashboard', style: TextStyle(color: Colors.black),),
        actions: <Widget>[
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => LoginScreen()
              ));
            },
            child: Padding(
              padding: const EdgeInsets.only(right:25, left:25),
              child: Icon(Icons.logout, color: Colors.black,),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 40),
              child: Assets.secondaryTitle(text: 'Bom dia William'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
              child: Assets.largeTitle(text: "R\$ 50,00"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: Assets.secondaryTitle(text: 'Gastos este mês'),
            ),
            Container(
              height: 150,
              child:
                Center(
                  child: ListView (
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      BoxCard(text: 'Histórico mensal', onTap: () => {}),
                      BoxCard(text: 'Lançamentos', onTap: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => PostingListScreen()
                          )
                        )
                      }),
                      BoxCard(text: 'Categorias de gastos', onTap: () => {}),
                    ],
                  ),
                ),

            ),
          ],
        )
      )
    );

  }

}
