import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restorantmenu/data/sepet_data.dart';

class Sepet extends StatelessWidget {
  Sepet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade300,
          title: Center(child: Text("Sepetim")),
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount:
                        Provider.of<Sepet_Data>(context).getdata().length,
                    itemBuilder: (context, index) {
                      var sepetIndex =
                          Provider.of<Sepet_Data>(context).getdata()[index];
                      return Padding(
                        padding: EdgeInsets.all(8),
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Row(
                              children: [
                                ClipRect(
                                  child: Image.asset(
                                    sepetIndex.image,
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
                                          sepetIndex.name,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Fiyat: ${sepetIndex.price}TL",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          sepetIndex.description,
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
                                            .deleteMenu(sepetIndex, index);
                                      },
                                      child: Text("Sil")),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }))
          ],
        ));
  }
}
