

import 'package:flutter/material.dart';
import 'package:project3/quiz%20model/quiz.dart';
import 'package:project3/score_screen.dart';

class Question_Screen extends StatefulWidget {
  final int index;

  Question_Screen(this.index);
  @override
  _Question_ScreenState createState() => _Question_ScreenState();
}

class _Question_ScreenState extends State<Question_Screen> {
  Quiz example=Quiz();
  bool isCorrect=false,isWrong=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:150.0),
              child: Text(
                example.quiz[widget.index].question,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.pink[100],
                  fontSize: 25.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:40.0),
              child: Container(
                width: 250.0,
                height: 250.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                  image: DecorationImage(
                    image: NetworkImage(example.quiz[widget.index].pic),
                    fit: BoxFit.fill,

                  ),
                ),

              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:80.0),
              child: Visibility(
                child: Icon(
                  Icons.check,
                  color: Colors.green,
                  size: 50.0,
                ),
                visible: isCorrect,
                replacement: Visibility(
                  child: Icon(
                    Icons.clear,
                    color: Colors.red,
                    size: 50.0,
                  ),
                  visible: isWrong,
                ),

              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                left:20.0,
                top:100.0,
              ),
              child: Row(
                children: [
                  MaterialButton(
                    onPressed: (){
                      if(example.quiz[widget.index].answer=='True')
                      {
                        setState(() {
                          isCorrect=true;
                          isWrong=false;
                          Quiz.score_s+=2;
                        });
                      }
                      else
                      {
                        setState(() {
                          isCorrect=false;
                          isWrong=true;
                        });
                      }
                      if(widget.index<3)
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=> Question_Screen(widget.index+1),
                          ),
                        );
                      else if(widget.index==3) {
                        if (Quiz.score_s == 8)
                          Quiz.score = '8';
                        else if (Quiz.score_s == 6)
                          Quiz.score = '6';
                        else if (Quiz.score_s == 4)
                          Quiz.score = '4';
                        else if (Quiz.score_s == 2)
                          Quiz.score = '2';
                        else if (Quiz.score_s == 0) Quiz.score = '0';
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Score(),
                          ),
                        );
                      }
                    },
                    child:Container(
                      width: 150.0,
                      height: 70.0,
                      child:Center(
                        child: Text(
                          'True',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.circular(12.0)
                      ),
                    ),

                  ),
                  MaterialButton(
                    onPressed: (){
                      if(example.quiz[widget.index].answer=='False')
                      {
                        setState(() {
                          isCorrect=true;
                          isWrong=false;
                          Quiz.score_s+=2;
                        });
                      }
                      else
                      {
                        setState(() {
                          isCorrect=false;
                          isWrong=true;
                        });
                      }
                      if(widget.index<3)
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context)=> Question_Screen(widget.index+1),
                        ),
                      );
                      else if(widget.index==3) {
                        if (Quiz.score_s == 8)
                          Quiz.score = '8';
                        else if (Quiz.score_s == 6)
                          Quiz.score = '6';
                        else if (Quiz.score_s == 4)
                          Quiz.score = '4';
                        else if (Quiz.score_s == 2)
                          Quiz.score = '2';
                        else if (Quiz.score_s == 0) Quiz.score = '0';
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Score(),
                          ),
                        );
                      }

                    },
                    child:Container(
                      width: 150.0,
                      height: 70.0,
                      child:Center(
                        child: Text(
                          'False',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.circular(12.0)
                      ),
                    ),

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  }


