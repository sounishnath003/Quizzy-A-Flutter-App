import 'package:flutter/material.dart';

void main() => runApp(MyApp());

Color primary_Color = const Color.fromRGBO(3, 54, 255,1);
Color scaffold_back_color = const Color.fromRGBO(255, 222 ,3, 1);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: primary_Color,
        scaffoldBackgroundColor: scaffold_back_color,
          splashColor: Colors.greenAccent
      ),
      home: MyHomePage(title: 'Nom nom'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        elevation: 0,
      ),
      body: Center(
        child: new Text('Hello World',
        style: new TextStyle(
          fontSize: 22.0
        ),),
      ),
      drawer: new Drawer(
        elevation: 0.0,
        child: new ListView(
          children: <Widget>[
            new Container(
              child: new DrawerHeader(
                  child: new CircleAvatar(
                    child: Icon(Icons.account_circle,
                    size: 55.0,
                    ),
                    backgroundColor: Colors.white,
                  )
              ),
              color: primary_Color,
            ),
            new Container(
             color: scaffold_back_color,
              child: new Column(
    children: new List.generate(4, (int index) {
    return new ListTile(
    leading: new Icon(Icons.info, color: Colors.black87
        ,),
    );
    },
    ),),
    ),
      ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        backgroundColor: primary_Color,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
