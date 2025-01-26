import 'package:flutter/material.dart';
import 'package:restorantmenu/catagories.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("Restorant Menüsü")),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: Catagories.catagories.length,
                  itemBuilder: (context, index) {
                    var catagory = Catagories.catagories[index];
                    return Container(
                      child: ListTile(
                          title: Stack(
                        children: [
                          Image.asset(
                            catagory["imagePath"] ?? "",
                            width: double.infinity,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                              bottom: 10,
                              left: 10,
                              child: Text(
                                catagory["name"] ?? "",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      )),
                    );
                  }))
        ],
      ),
    );
  }
}
