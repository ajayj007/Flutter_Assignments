import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter Demo",
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatefulWidget{
  const HomeApp({super.key});

  
   @override
  State<StatefulWidget> createState() => _HomeAppState();

}

class _HomeAppState extends State{
   
   void openBottomsheet(){
    showModalBottomSheet(
      context: context,
      
      builder: (context){
        return Column(
           children: [
            const Text("Bottom sheet",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w300,
            ),
            ),
            Container(
              height: 200,
              color: Colors.amber,
            ),
           ],
        );
      },
    );
   }

  @override
  Widget build(BuildContext context){
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("BottomSheet"),
      ),
      body: const Center(
        child: Text(
          "BottomSheet Demo",
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed:(){
          openBottomsheet();
        },
        child: const Icon(Icons.add),
         ),
     );
  }
}