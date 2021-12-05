import 'package:flutter/material.dart';

class Test1Review extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('John DeLeo Test1 Review'),
        ),
        body: Center(
            child: Row(       //John DeLeo
                children: [
                  Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(height: 40, width:40, color:Colors.lightGreen,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('John DeLeo', style: TextStyle(fontSize: 8),),
                        ),
                      ),
                      Container(height: 40, width:40, color:Colors.brown,
                        child: Text('John DeLeo', style: TextStyle(fontSize: 8),),
                      ),
                    ],
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(height: 40, width:40, color:Colors.lime,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('John DeLeo', style: TextStyle(fontSize: 8),),
                        ),
                      ),
                      SizedBox(height: 80,),
                      Container(height: 40, width:40, color:Colors.lightBlue,
                        child: Text('John DeLeo', style: TextStyle(fontSize:8),),
                      ),
                    ],
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(height: 40, width:40, color:Colors.pink,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('John DeLeo', style: TextStyle(fontSize: 8),),
                        ),
                      ),
                      SizedBox(height: 160,),
                      Container(height: 40, width:40, color:Colors.green,
                        child: Text('John DeLeo', style: TextStyle(fontSize: 8),),
                      ),
                    ],
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(height: 40, width:40, color:Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('John DeLeo', style: TextStyle(fontSize: 8),),
                        ),
                      ),
                      SizedBox(height: 240,),
                      Container(height: 40, width:40, color:Colors.blue,
                        child: Text('John DeLeo', style: TextStyle(fontSize: 8),),
                      ),
                    ],
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(height: 40, width:40, color:Colors.brown,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('John DeLeo', style: TextStyle(fontSize: 8),),
                        ),
                      ),
                      SizedBox(height: 320,),
                      Container(height: 40, width:40, color:Colors.purple,
                        child: Text('John DeLeo', style: TextStyle(fontSize: 8),),
                      ),
                    ],
                  ),
                ]

            )
        )// This trailing comma makes auto-formatting nicer for build methods.
    );;
  }
}
