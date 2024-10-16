import 'package:flutter/material.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  State createState() => _MainAppState();
}

class _MainAppState extends State{
  TextEditingController namecontroller = TextEditingController();
  String? name;
  List<String> playerlist = [];

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Textfield Listview Demo",
          style: TextStyle(
            fontWeight:FontWeight.w200,
            fontSize: 22,
          ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),

        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: namecontroller,
                style: const TextStyle(
                  fontSize: 22,
                ),
                decoration: const InputDecoration(
                  hintText: "Enter Name",
                  hintStyle: TextStyle(
                    fontSize: 22,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                ),
              onChanged: (String val){
                print("val $val");
              },

              onEditingComplete: () {
                print("Editing Completed");
              },  

              onSubmitted: (value){
                print("value submitted: $value");
              },

              ),
            ),

            const SizedBox(
              height: 20,
            ),

            GestureDetector(
              onTap: (){
                print("Add Data");

                name = namecontroller.text.trim();

                print("My name : $name");
                if(name != ""){
                  playerlist.add(name!);
                  print("Playerlist length : ${playerlist.length}");
                  namecontroller.clear();
                  setState(() {
                    
                  });
                }
                
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text("Add Data",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                ),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            ListView.builder(
              itemCount: playerlist.length,
              shrinkWrap: true,
              itemBuilder:(context,index){
                return Text(
                  "Name : ${playerlist[index]}",
                  style: const TextStyle(
                    fontSize: 22,
                  ),
                );
              } 
              
              ),
          ],
        ),
      ),
    );
  }
}
