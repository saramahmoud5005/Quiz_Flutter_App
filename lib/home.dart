import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project3/question_screen.dart';
import 'package:project3/quiz%20model/quiz.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 110.0),
                child: Text('Animals quiz',
                    style: TextStyle(
                      color: Colors.pink[100],
                      fontSize: 40.0,
                    )),
              ),
          /*Padding(
            padding: const EdgeInsets.only(top:150.0,),
            child: Container(
              width: 100.0,
              height: 50.0,
              child: TextFormField(
                style: TextStyle(
                    backgroundColor: Colors.black,
                  fontSize: 5.0
                ),
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    labelText: 'Enter your username',
                  labelStyle: TextStyle(
                    color: Colors.white
                  )
                ),
              ),
            ),
          ),*/
              Padding(
                padding: const EdgeInsets.only(top:80.0),
                child: Container(
                  width: 250.0,
                  height: 250.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                       borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                      image: NetworkImage('https://image.pngaaa.com/529/1706529-small.png'),
                      fit: BoxFit.fill,

                    ),
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:130.0), //150
                child: MaterialButton(
                  onPressed: () {
                    Quiz.score_s=0;
                    Quiz.score='0';
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
                        'Start',
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
            ],
          ),
        ),
      ),
    );
  }
}
