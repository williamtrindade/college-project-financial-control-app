import 'package:app/screens/categories/categories_create.dart';
import 'package:app/screens/categories/list_item.dart';
import 'package:app/widgets/assets.dart';
import 'package:flutter/material.dart';

class CategoriesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color(0xff27FF30),
          title: Text(
            'Categorias de gastos',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(5),
                        child: Material(
                          elevation: 3,
                          child: ListItem(
                            name: 'Mercado', onDelete: () => {}),
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
                  builder: (context) => CategoriesCreateScreen()))
            }));
  }
}
