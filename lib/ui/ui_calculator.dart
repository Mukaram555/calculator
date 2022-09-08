import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import '../constant/button.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({Key? key}) : super(key: key);

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  var UserInput='';
  var result='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Align(
              alignment: Alignment.bottomRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(UserInput,style: TextStyle(color: Colors.white,fontSize: 40,),),
                  Text(result,style: TextStyle(color: Colors.white,fontSize: 40,),),
                ],
              ),
            ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      MyButton(
                        value: 'AC',
                        callBackFunction: (){
                          UserInput = '';
                          result = '';
                          setState(() {

                          });
                        },

                      ),
                      MyButton(
                        value: '+/-',
                        callBackFunction: (){
                          UserInput += '+';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        value: '%',
                        callBackFunction: (){
                          UserInput += '%';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        value: '/',
                        ButtonColor: Colors.orange,
                        callBackFunction: (){
                          UserInput += '/';
                          print("Button PRessed");
                          setState(() {

                          });
                        },
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        value: '7',
                        callBackFunction: (){
                          UserInput += '7';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        value: '8',
                        callBackFunction: (){
                          UserInput += '8';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        value: '9',
                        callBackFunction: (){
                          UserInput += '9';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        value: 'x',
                        ButtonColor: Colors.orange,
                        callBackFunction: (){
                          UserInput += 'x';
                          setState(() {

                          });
                        },
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        value: '4',
                        callBackFunction: (){
                          UserInput += '4';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        value: '5',
                        callBackFunction: (){
                          UserInput += '5';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        value: '6',
                        callBackFunction: (){
                          UserInput += '6';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        value: '-',
                        ButtonColor: Colors.orange,
                        callBackFunction: (){
                          UserInput += '-';
                          setState(() {

                          });
                        },
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        value: '1',
                        callBackFunction: (){
                          UserInput += '1';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        value: '2',
                        callBackFunction: (){
                          UserInput += '2';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        value: '3',
                        callBackFunction: (){
                          UserInput += '3';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        value: '+',
                        ButtonColor: Colors.orange,
                        callBackFunction: (){
                          UserInput += '+';
                          setState(() {

                          });
                        },
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        value: '0',
                        callBackFunction: (){
                          UserInput += '0';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        value: '.',
                        callBackFunction: (){
                          UserInput += '.';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        value: 'Del',
                        callBackFunction: (){
                          UserInput = UserInput.substring(0,UserInput.length -1);
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        value: '=',
                        callBackFunction: (){
                          Pressed();
                          setState(() {
                          },);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void Pressed(){
    String NewData;
    NewData = UserInput.replaceAll('x','*');
    Parser p = Parser();
    Expression expression = p.parse(NewData);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL,contextModel);
    result = eval.toString();

  }
}