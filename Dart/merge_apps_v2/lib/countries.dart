import 'package:flutter/material.dart';


class Usa extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('United States'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('The United States of America (USA), commonly known as the United States (US or U.S.) or America, '
                        'is a country mostly located in central North America, between Canada and Mexico. It consists of 50 states, '
                        'a federal district, five major self-governing territories, and various possessions. '
                        'At 3.8 million square miles (9.8 million square kilometers), it is the world\'s third- or fourth-largest '
                        'country by total area. With a population of over 328 million, it is the third most populous '
                        'country in the world. The federal capital is Washington, D.C., and the most populous city is New York City. ')
                ),
              ],
            )
        )
    );
  }
}

class Canada extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Canada'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Canada is a country in the northern part of North America. Its ten provinces and three '
                        'territories extend from the Atlantic to the Pacific and northward into the Arctic Ocean, covering '
                        '9.98 million square kilometres (3.85 million square miles), making it the world\'s second-largest '
                        'country by total area. Its southern and western border with the United States, stretching 8,891 '
                        'kilometres (5,525 mi), is the world\'s longest bi-national land border. Canada\'s capital is Ottawa, '
                        'and its three largest metropolitan areas are Toronto, Montreal, and Vancouver.')
                ),
              ],
            )
        )
    );
  }
}
