import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: Calculator()
));

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  Widget calcButton(String btntxt,Color btncolor,Color txtcolor){
    return  Container(
      child: ElevatedButton(
        onPressed: (){
          calculate(btntxt);
        },
        child:
        Text(btntxt,
          style: TextStyle(
            fontSize: 35,
            color: txtcolor,
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('CALCULATOR'),
        centerTitle: true,
        backgroundColor: Colors.green[600],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:  <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(text,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 100,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcButton('7', Colors.green, Colors.white),
                calcButton('8', Colors.green, Colors.white),
                calcButton('9', Colors.green, Colors.white),
                calcButton('x', Colors.green, Colors.white),
          ],
      ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              calcButton('4', Colors.green, Colors.white),
              calcButton('5', Colors.green, Colors.white),
              calcButton('6', Colors.green, Colors.white),
              calcButton('-', Colors.green, Colors.white),
        ],
      ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              calcButton('1', Colors.green, Colors.white),
              calcButton('2', Colors.green, Colors.white),
              calcButton('3', Colors.green, Colors.white),
              calcButton('+', Colors.green, Colors.white),
        ],
      ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcButton('0', Colors.green, Colors.white),
                calcButton(',', Colors.green, Colors.white),
                calcButton('%', Colors.green, Colors.white),
                calcButton('=', Colors.green, Colors.white),
              ],
            ),
        ],
      ),
    )
    );
  }
}

dynamic text = "0";
double numberOne = 0;
double numberTwo = 0;
dynamic opr = '';
dynamic result = '';

void calculate(btnText) {

  if(opr == '+') {
    result = (numberOne + numberTwo);
  } else if( opr == '-') {
    result = (numberOne - numberTwo);
  } else if( opr == 'x') {
    result = (numberOne * numberTwo);
  } else if( opr == '/') {
    result = (numberOne / numberTwo);
  }

}


