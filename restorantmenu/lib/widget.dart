import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restorantmenu/data/sepet_data.dart';
import 'package:restorantmenu/sepet.dart';

import 'data/main_data.dart';

class NewAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const NewAppbar({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue.shade300,
      title: Center(child: Text(title)),
      actions: [
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Sepet()));
          },
        ),
      ],
    );
  }

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class NewColumn extends StatelessWidget {
  const NewColumn({
    super.key,
    required this.items,
  });

  final List<Main_Data> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  var dishIndex = items[index];
                  return Padding(
                    padding: EdgeInsets.all(8),
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            ClipRect(
                              child: Image.asset(
                                dishIndex.image,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    Text(
                                      dishIndex.name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Fiyat: ${dishIndex.price}TL",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      dishIndex.description,
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                )),
                            SizedBox(
                              width: 4,
                            ),
                            Expanded(
                              flex: 1,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Provider.of<Sepet_Data>(context,
                                            listen: false)
                                        .addMenu(dishIndex);
                                  },
                                  child: Text("ekle")),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }))
      ],
    );
  }
}
