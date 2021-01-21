import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool _showPerfomanceOverlay = false;
  @override
  Widget build(BuildContext context) {

    void _onPressed(BuildContext context) {
      print('Hola $context');
      final snackBar = SnackBar(content: Text('Are you talkin\' to me?'));
      Scaffold.of(context).showSnackBar(snackBar);
    }

    void _onLongPress(BuildContext context) {
      final snackBar = SnackBar(
          content: Text('Are you talkin\' to me?'),
          backgroundColor: Colors.lime);
      Scaffold.of(context).showSnackBar(snackBar);
    }

    return MaterialApp(
      showPerformanceOverlay: _showPerfomanceOverlay,
      debugShowCheckedModeBanner: false,
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
            Carditem(
                child:
                    ElevatedButton(child: Text('Press Me!'), onPressed: () {}),
                text: 'Classic EB'),
            Carditem(
                child: ElevatedButton.icon(
                    label: Text('Press Me!'),
                    icon: Icon(Icons.assignment),
                    onPressed: () {}),
                text: 'Classic EB'),
            Carditem(
                child:
                    ElevatedButton(child: Text('Press Me!'), onPressed: null),
                text: 'Disabled EB'),
            Carditem(
                child: ElevatedButton(
                    child: Text('Press Me!'),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.yellow, onPrimary: Colors.purple)),
                text: 'EB with BackgroundColor and TextColor'),
            Carditem(
                child: ElevatedButton(
                    child: Text('Press Me!'),
                    onPressed: null,
                    style: ElevatedButton.styleFrom(onSurface: Colors.teal)),
                text: 'EB disabled with BackgroundColor and TextColor'),
            Carditem(
                child: ElevatedButton(
                  child: Text('Press Me!'),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      onPrimary: Colors.black,
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic)),
                ),
                text: 'EB with textstyle'),
            Carditem(
                child: ElevatedButton(
                  child: Text('Press Me!'),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pinkAccent,
                      onPrimary: Colors.white,
                      shadowColor: Colors.purple,
                      elevation: 5.0),
                ),
                text: 'EB with shadow and elevation'),
            Carditem(
                child: TextButton(child: Text('Press Me!'), onPressed: () {}),
                text: 'Classic TB'),
            Carditem(
                child: TextButton.icon(
                    icon: Icon(Icons.build),
                    label: Text('Press Me!'),
                    onPressed: () {}),
                text: 'TB use icon contructor'),
            Carditem(
                child: TextButton(
                    child: Text('Press Me!'),
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        primary: Colors.amber, backgroundColor: Colors.black)),
                text: 'TB with background color and text color'),
            Carditem(
                child:
                    OutlinedButton(child: Text('Press Me!'), onPressed: () {}),
                text: 'Classic OB'),
            Carditem(
                child: OutlinedButton(
                    child: Text('Press Me!'),
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        primary: Colors.lime, backgroundColor: Colors.white)),
                text: 'OB with Background and textcolor'),
            Carditem(
                child: OutlinedButton.icon(
                    icon: Icon(Icons.cached),
                    label: Text('Press Me!'),
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(shape: StadiumBorder())),
                text: 'OB with Shape and Icon'),
            Carditem(
                child: IconButton(icon: Icon(Icons.cake), onPressed: () {}),
                text: 'Classic IB'),
            Carditem(
                child: IconButton(
                    icon: Icon(Icons.plus_one),
                    onPressed: () {},
                    tooltip: 'Plus One...'),
                text: 'IB with Tooltip'),
            Carditem(child: BackButton(), text: 'BackButton'),
            Carditem(child: CloseButton(), text: 'CloseButton'),
            Carditem(
                child: Builder(
                    builder: (context) => ElevatedButton.icon(
                        label: Text('Press Me!'),
                        icon: Icon(Icons.call),
                        onPressed: () {
                          _onPressed(context);
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.cyan,
                            onPrimary: Colors.white,
                            onSurface: Colors.red))),
                text: 'EB with onPressed'),
            Carditem(
                child: Builder(
                    builder: (context) => ElevatedButton.icon(
                          label: Text('Press Me!'),
                          icon: Icon(Icons.call_end),
                          onPressed: () {
                            _onLongPress(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.indigo,
                            onPrimary: Colors.white,
                            onSurface: Colors.red,
                          ),
                        )),
                text: 'EB with onLongPress'),
          ],
        ),
      ),
    );
  }
}

class Carditem extends StatelessWidget {
  final Widget child;
  final String text;

  const Carditem({Key key, @required this.child, @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            this.child,
            Text(this.text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Colors.red))
          ],
        ),
      ),
    ));
  }
}
