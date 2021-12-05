import 'package:flutter/material.dart';

class CustomClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('John DeLeo Custom Class'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Expanded(child: WhatGoesOnRows('are', 'you', 'there')),
            Expanded(child: DecoratedBox(decoration: BoxDecoration(color: Colors.lightGreenAccent),
                child: WhatGoesOnRows('river', 'is', 'flowing')),
            )],
        ),
                                          //John DeLeo
      ),
    );
  }
}

class WhatGoesOnRows extends StatelessWidget{
  final String first, second, third;
  const WhatGoesOnRows(this.first, this.second, this.third);
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Text(first),
      ),
      Expanded(
        child: Text(second),
      ),
      Expanded(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Icon(Icons.attach_money, size: 40),
        ),
      ),
    ],);

  }
}
