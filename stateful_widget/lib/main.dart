// 1) Counter App


// import "package:flutter/material.dart";

// void main() {
//   runApp(const MyApp() );
// }

// class MyApp extends StatelessWidget{
//    const MyApp({super.key});

//   @override
//   Widget build(BuildContext context){
//       return const MaterialApp(
        
//         home: CounterApp(),
//       );
//   }
// }

// class CounterApp extends StatefulWidget{
//   const CounterApp({super.key});
//   @override
//   State createState() => _CounterAppState();
  
// }

// class _CounterAppState extends State{
//   int _counter = 0;  

//     @override
//   Widget build(BuildContext context) {
//      return Scaffold(
//       appBar: AppBar(
//         title: const Text("Counter App",
//         style: TextStyle(
//           fontSize: 25,
//           color: Colors.blue,
//         ),
//         ),
//       ),

//       body: Center(
//         child: Column(
//           children: [
//             Text("$_counter",
//             style: const TextStyle(
//               fontSize: 20,
//               color: Colors.amber,
//               fontWeight: FontWeight.w400,

//             ),
            
//             )

            
//           ],
//         ),
//       ),

//       floatingActionButton: FloatingActionButton(
//         onPressed: (){
//           setState(() {
//              _counter++;
//           });
        
//         },
//         tooltip: "Increment",
//         child:  const Icon(Icons.add),
//         ),
//      );
//   }
// }

// 2) Container Color Change

// import 'package:flutter/material.dart';

// void main(){
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context){
//      return const MaterialApp(
//         home: HomeApp(),
//      );
//   }
// }

// class HomeApp extends StatefulWidget{
//   const HomeApp({super.key});

//   @override
//   State createState() => _HomeApp();
// }

// class _HomeApp extends State{
  
//   bool _colorState = true;

//   void _changemethod(){
//     setState(() {
//        _colorState = !_colorState;
//     });
//   }
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//        appBar: AppBar(
//         title: const Text("Container color change",
//         style: TextStyle(
//            fontSize: 26,
//            fontWeight: FontWeight.w500,
//            color: Colors.blue,

//         ),
//         ),
//        ),

//        body: Center(
//         child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                  width: 200,
//                  height: 200,
//                  decoration: BoxDecoration(
//                   color: _colorState? Colors.red : Colors.yellow,
//                  ),
//               ),
//             ],
//         ),
//        ),

//        floatingActionButton: FloatingActionButton(
//         onPressed: _changemethod, 
//         tooltip: "Color Change",
//         child: const Icon(Icons.add),
        
//         ),
//     );
//   }
// }
//3) App color change
// import 'package:flutter/material.dart';

// void main(){
//     runApp(const MyApp());
// }

// class MyApp extends StatelessWidget{
//     const MyApp({super.key});

//     @override
//     Widget build(BuildContext context){
//         return const MaterialApp(
//             title: "Image change App",
//             home: HomeApp(),
//         );
//     }
// }

// class HomeApp extends StatefulWidget{
//     const HomeApp({super.key});
//     @override
//     State createState() => _HomeAppState();
// }

// class _HomeAppState extends State{
//     bool colorstate = true;
//     void _colorchange(){
        
//         setState(() {
//            colorstate = !colorstate; 
//         });
//     }

//     @override
//     Widget build(BuildContext context){
//         return Scaffold(
//             backgroundColor: colorstate ?Colors.red: Colors.pink ,
//             body: Center(
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                    children: [
//                      Container(
//                         height: 200,
//                         width: 200,
//                         color: Colors.yellow,
                        
//                      ),

//                      const SizedBox(height: 100,),
//                      ElevatedButton(
//                         onPressed: _colorchange , 
//                         child: const Text("Change",
//                          style: TextStyle(
                            
//                             color: Colors.black,
//                             fontSize: 23,
//                             fontWeight: FontWeight.w500,
//                          ),
//                         )),
//                    ], 
//                 ),
//             ),
//         );
//     }
// }


// 4)Image player Images

import 'package:flutter/material.dart';

void main(){
    runApp(const MyApp());
}

class MyApp extends StatelessWidget{
    const MyApp({super.key});

    @override
    Widget build(BuildContext context){
        return const MaterialApp(
            title: "Image change App",
            home: HomeApp(),
        );
    }
}

class HomeApp extends StatefulWidget{
    const HomeApp({super.key});
    @override
    State createState() => _HomeAppState();
}

class _HomeAppState extends State{
    int counter = 1;
    late String src ;
    @override
    void initState(){
           super.initState();
           src ="https://th.bing.com/th?q=Cricket+Logo.png&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.3&pid=InlineBlock&mkt=en-IN&cc=IN&setlang=en&adlt=moderate&t=1&mw=247";
        }
    void _imagechange(){
        
        setState(() {
            if(counter == 5){
                counter = 1;
            }else{
            counter++;
            }

            if(counter == 1 ){
          src ="http://ts1.mm.bing.net/th?id=OIP.F5owTx1Y5BgGUhxjAp2tBgHaFX&pid=15.1";                   
        }else if(counter == 2 ){
           src ="http://ts3.mm.bing.net/th?id=OIP.VHVb8VLYv0TajuV8SFYgNgHaEH&pid=15.1";                 
        }else if(counter == 3 ){
           src ="https://th.bing.com/th?id=OIF.VxsJKQTRzcmP%2b71T3RKKVQ&w=250&h=182&c=7&r=0&o=5&dpr=1.3&pid=1.7";                 
        }else{
           src ="https://th.bing.com/th?q=MS+Dhoni+Animated+Images&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.3&pid=InlineBlock&mkt=en-IN&cc=IN&setlang=en&adlt=moderate&t=1&mw=247"; 
        }
        });
    }

    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                        
                        child: src.isNotEmpty?Image.network(src,
                         width: 200,
                         height: 200,
                          
                        ): const Text("No Image Available"),
                     ),

                     const SizedBox(height: 100,),
                     ElevatedButton(
                        onPressed: _imagechange , 
                        child: const Text("Change",
                         style: TextStyle(
                            
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                         ),
                        )),
                   ], 
                ),
            ),
        );
    }
}