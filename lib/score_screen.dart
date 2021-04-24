import 'package:flutter/material.dart';
import 'package:project3/question_screen.dart';
import 'package:project3/quiz%20model/quiz.dart';

class Score extends StatelessWidget {
  String score;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children:[
            Padding(
              padding: const EdgeInsets.only(top:80.0),
              child: Container(
                width: 250.0,
                height: 250.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                  image: DecorationImage(
                    image: NetworkImage('https://library.kissclipart.com/20180831/vue/kissclipart-alligator-cartoon-clipart-alligators-crocodile-cli-ffee905a2c014c0d.jpg'),
                    fit: BoxFit.fill,

                  ),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Text(
                'Congrats!',
                    style:TextStyle(
                      fontSize: 50.0,
                      color: Colors.pink[100],
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:60.0),
              child: Text(
                'Your Score',
                    style:TextStyle(
                      fontSize: 40.0,
                      color: Colors.pink[100],
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:50.0),
              child: Text(
                Quiz.score+' / 8',
                style:TextStyle(
                  fontSize: 40.0,
                  color: Colors.pink[100],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:50.0), //150
              child: MaterialButton(
                onPressed: () {
                  Quiz.score='0';
                  Quiz.score_s=0;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> Question_Screen(0),
                    ),
                  );
                },
                child: Container(
                  width: 200.0,
                  height: 70.0,
                  child: Center(
                    child: Text(
                      'Play again',
                      style: TextStyle(
                        fontSize: 30.0,

                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(20.0),
                  ),



                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}

