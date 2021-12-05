import 'package:flutter/material.dart';


class TipCalculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tip Calculator-John DeLeo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Tip Calculator-John DeLeo'),
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
  String t1,t2, result='';
  double n2;
  TipCalculate tipcalc = TipCalculate(service: 'g',bill: 100);

  void _incrementCounter() {
    setState(() {
      result = tipcalc.tip(n2, t1);

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
            Text(result),
            TextField(decoration: InputDecoration(labelText: 'Enter g-Great,a-Average,n-Not Good,p-Poor', border: OutlineInputBorder(), hintText: 'Enter g, a, n or p'),
              onChanged: (text){
                t1=text;
              },),
            TextField(keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Enter Bill Amount', border: OutlineInputBorder(), hintText: 'Enter bill for tip to be calculated'),
                onChanged: (text){
                  t2=text;
                  n2=double.parse(t2);
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
class TipCalculate{
  double bill, tiprate;
  String service, result = "";
  TipCalculate({this.bill,this.tiprate,this.service});
  String tip(bill,service){
    if(service == 'g'){
      tiprate = 0.25;
    }
    else if(service=='a'){
      tiprate = 0.15;
    }
    else if(service =='n'){
      tiprate =.1;
    }
    else if(service =='p'){
      tiprate =0;
    }
    //John DeLeo
    return 'Tip is \$' + (bill*tiprate).round().toString()+'.';
  }
}
