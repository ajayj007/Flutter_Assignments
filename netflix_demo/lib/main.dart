import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Netflix Demo",
          style: TextStyle(fontSize: 22,fontWeight: FontWeight.w300,color:Colors.amber),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 10,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context,int index){
             return Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
               const Text("Action Movies",
                 style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                 ),
                 ),

                 SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("http://ts1.mm.bing.net/th?id=OIP.F5owTx1Y5BgGUhxjAp2tBgHaFX&pid=15.1"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("http://ts1.mm.bing.net/th?id=OIP.F5owTx1Y5BgGUhxjAp2tBgHaFX&pid=15.1"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("http://ts1.mm.bing.net/th?id=OIP.F5owTx1Y5BgGUhxjAp2tBgHaFX&pid=15.1"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("http://ts1.mm.bing.net/th?id=OIP.F5owTx1Y5BgGUhxjAp2tBgHaFX&pid=15.1"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("http://ts1.mm.bing.net/th?id=OIP.F5owTx1Y5BgGUhxjAp2tBgHaFX&pid=15.1"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("http://ts1.mm.bing.net/th?id=OIP.F5owTx1Y5BgGUhxjAp2tBgHaFX&pid=15.1"),
                      ),
                    ],
                  ),
                 ),
               ],
             );
          }
          )
      ),
    );
  }
}
