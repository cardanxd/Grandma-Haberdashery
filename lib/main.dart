import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DummyPlayer',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grandma Haberdashery'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
                child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    RaisedButton( 
                      child: Text('Press Me!'),
                      onPressed: (){}),
                    Text('Description', textAlign: TextAlign.center,)
                  ],
                ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
