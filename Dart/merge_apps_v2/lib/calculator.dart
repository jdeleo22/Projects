import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'John DeLeo-Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'John DeLeo-Calculator'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  double n1,n2;
  String output = '';
  String t1='',t2 = '';
  Calculate calc = Calculate(num1:8,num2:2);
  //Calculate calc2 = new Calculate();

  //JOHN DELEO
  void _incrementCounter() {
    setState(() {

      output = 'Summation of '+n1.toString()+' and '+n2.toString()+' is '+calc.sum(n1,n2).toString()
          +'\n Multiplication of '+n1.toString()+' and '+n2.toString()+' is '+calc.multiply(n1,n2).toString()
          +'\nDivision of '+n1.toString()+' and '+n2.toString()+' is '+calc.divide(n1,n2).toString()
          +'\nSubtraction of '+n1.toString()+' and '+n2.toString()+' is '+ calc.subtract(n1,n2).toString()
          +'\nAverage is of '+n1.toString()+' and '+n2.toString()+' is '+calc.average(n1,n2).toString();

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(decoration: InputDecoration(labelText: 'Enter First Number', border: OutlineInputBorder(), hintText: 'Enter any number to be calculated'),
              onChanged: (text){
                t1=text;
                n1=double.parse(t1);
              },),
            TextField(decoration: InputDecoration(labelText: 'Enter Second Number', border: OutlineInputBorder(), hintText: 'Enter any number to be calculated'),
                onChanged: (text){
                  t2=text;
                  n2=double.parse(t2);
                }),
            Text(output),
            RaisedButton(
              child: Text('Calculate'),
              onPressed: _incrementCounter,
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Calculate{
  double num1, num2, result=0;
  Calculate({this.num1,this.num2});

  double sum(double num1, double num2){
    result = num1 + num2;
    return result;
  }
  double multiply(double num1, double num2){
    result = num1 * num2;
    return result;
  }
  double divide(double num1, double num2){
    result = num1 / num2;
    return result;
  }
  double subtract(double num1, double num2){
    result = num1 - num2;
    return result;
  }
  double average(double num1, double num2){
    result = (num1 + num2) / 2;
    return result;
  }

}