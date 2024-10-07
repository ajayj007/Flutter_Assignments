
import 'package:flutter/material.dart';



void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget{
    const MainApp({super.key});
   @override
   Widget build(BuildContext context){
      return const MaterialApp(
        home: QuizApp(),
      );
   }
}

class QuizApp extends StatefulWidget{
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();

}

class _QuizAppState extends State{

  List<Map> allquestions = [
     {
    "question": "Who is the founder of Microsoft?",
    "options":["Steve Jobs","Bill Gates","Lary Page","Elon musk"],
    "correctAnswer": 1
  },
  {
    "question": "Who is the founder of Google?",
    "options":["Steve Jobs", "Bill Gates","Lary Page","Elon musk"],
    "correctAnswer": 2
  },
  {
     "question": "Who is the founder of Spacex?",
     "options":["Steve Jobs","Bill Gates", "Lary Page", "Elon musk"],
     "correctAnswer": 3
  },
  {
     "question": "Who is the founder of Apple?",
     "options": ["Steve Jobs", "Bill Gates", "Lary Page", "EIon musk"],
     "correctAnswer":0
  },

  {

     "question": "Who is the founder of Meta?",
     "options":["Steve Jobs", "Mark Zuckerberg", "Lary Page","Elon musk"],
     "correctAnswer":1
  },
  ];
  
  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  int score = 0;

   WidgetStateProperty<Color> checkAnswer(int answerIndex){
    if(selectedAnswerIndex != -1){
        if(answerIndex == allquestions[currentQuestionIndex]["correctAnswer"]){
          
          return const WidgetStatePropertyAll(Colors.green);

        }else if(selectedAnswerIndex == answerIndex){
          return const WidgetStatePropertyAll(Colors.red);
        }else{
          return const WidgetStatePropertyAll(Colors.transparent);
        }
    }else{
      return  const WidgetStatePropertyAll(Colors.transparent);
    }
   }

   bool questionPage = true;

  @override
  Widget build(BuildContext context){
    return isQuestionScreen();
  }

  Scaffold isQuestionScreen(){
    if(questionPage == true){
      return Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
          
            
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),

        body: Column(
              children: [
                 Row(
                  children: [
                    const SizedBox(
                  width: 130,
                 ),

                 Text(
                  "Question : ${currentQuestionIndex + 1}/${allquestions.length}",
                  style:const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                 )
                  ],
                 ),

                 const SizedBox(
                  height: 50,
                 ),

                 SizedBox(
                  width: 380,
                  height: 50,
                  child: Text( allquestions[currentQuestionIndex]["question"],
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight:FontWeight.w600,
                    color: Colors.purple,

                  ),
                  ),
                 ),

                 const SizedBox(
                  height: 50,
                 ),
                 
                 SizedBox(
                  height: 50,
                  width: 300,

                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: checkAnswer(0)
                    ),
                    onPressed: (){
                      if(selectedAnswerIndex == -1){
                         selectedAnswerIndex = 0;
                         setState(() {
                             if (selectedAnswerIndex == allquestions[currentQuestionIndex]["correctAnswer"]) {
                                  score++;  
                              }
                         });
                      }
                    }, child: Text( "A. ${allquestions[currentQuestionIndex]["options"][0]} ",
                       style: const TextStyle(
                        fontSize: 20,
                        fontWeight:FontWeight.w500,
                        color: Colors.black,
                       ),
                    )),
                       
                 ),

                 const SizedBox(
                  height: 25,
                 ),
                 
                 SizedBox(
                  height: 50,
                  width: 300,

                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: checkAnswer(1),
                    ),
                    onPressed: (){
                      if(selectedAnswerIndex == -1){
                         selectedAnswerIndex = 1;
                         setState(() {
                              if (selectedAnswerIndex == allquestions[currentQuestionIndex]["correctAnswer"]) {
                               score++;  
                              }
                         });
                      }
                    }, child: Text( "B. ${allquestions[currentQuestionIndex]["options"][1]} ",
                       style: const TextStyle(
                        fontSize: 20,
                        fontWeight:FontWeight.w500,
                        color: Colors.black,
                       ),
                    )),
                       
                 ),

                 const SizedBox(
                  height: 25,
                 ),
                 
                 SizedBox(
                  height: 50,
                  width: 300,

                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: checkAnswer(2),
                    ),
                    onPressed: (){
                      if(selectedAnswerIndex == -1){
                         selectedAnswerIndex = 2;
                         setState(() {
                            if (selectedAnswerIndex == allquestions[currentQuestionIndex]["correctAnswer"]) {
                               score++;  
                             }
                         });
                      }
                    }, child: Text( "C. ${allquestions[currentQuestionIndex]["options"][2]} ",
                       style: const TextStyle(
                        fontSize: 20,
                        fontWeight:FontWeight.w500,
                        color: Colors.black,
                       ),
                    )),
                       
                 ),

                 const SizedBox(
                  height: 25,
                 ),
                 
                 SizedBox(
                  height: 50,
                  width: 300,

                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: checkAnswer(3),
                    ),
                    onPressed: (){
                      if(selectedAnswerIndex == -1){
                         selectedAnswerIndex = 3;
                         setState(() {
                            if (selectedAnswerIndex == allquestions[currentQuestionIndex]["correctAnswer"]) {
                               score++;  
                               }
                         });
                      }
                    }, child: Text( "D. ${allquestions[currentQuestionIndex]["options"][3]} ",
                       style: const TextStyle(
                        fontSize: 20,
                        fontWeight:FontWeight.w500,
                        color: Colors.black,
                       ),
                    )),
                       
                 ),
              
              
                 
              ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(selectedAnswerIndex != -1){
              if(currentQuestionIndex < allquestions.length-1){
                currentQuestionIndex++;

              }else{
                questionPage = false;
              }
              selectedAnswerIndex = -1;
              setState(() {
                
              });
            }
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Colors.white,
          ),
        ),
      );
    }else{
      return Scaffold(
         appBar: AppBar(
          title: const Text("Quiz result",
          style: TextStyle(
            fontSize: 28,
            fontWeight:FontWeight.w900,
            color: Colors.white,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        
         ),
         body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              

               const SizedBox(height: 30,),
               const Text(
                "Congratulations",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight:FontWeight.w900,
                  color: Colors.orange,
                ),
              ),
               const SizedBox(height: 30,),
               Text("Score: $score",
               style: const TextStyle(
                fontSize:26,
                fontWeight: FontWeight.w500,
                color: Colors.red,
               ),
               ),

               ElevatedButton(
                onPressed: (){
                  selectedAnswerIndex = -1;
                  currentQuestionIndex = 0;
                  questionPage = true;
                  score = 0;

                  setState(() {
                    
                  });
                } , child: const Text("Back"),)

            ],
          ),
         ),
      );
    }


  }
}