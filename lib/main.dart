import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
    final ButtonStyle mainStyle = ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 68, 68, 68),
      textStyle: const TextStyle(fontSize: 20),
    );
    final ButtonStyle operatorStyle = ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 255, 166, 34),
      textStyle: const TextStyle(fontSize: 20),
    );
    final ButtonStyle topStyle = ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 173, 173, 173),
      foregroundColor: Colors.black,
      textStyle: const TextStyle(fontSize: 20),
    );

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Column(
              children: [
                Row(
                  children: [
                    ElevatedButton(
                        style: topStyle,
                        onPressed: () {},
                        child: const Text('AC')),
                    ElevatedButton(
                        style: topStyle,
                        onPressed: () {},
                        child: const Text('')),
                    ElevatedButton(
                        style: topStyle,
                        onPressed: () {},
                        child: const Text('')),
                    ElevatedButton(
                        style: operatorStyle,
                        onPressed: () {},
                        child: const Text('/')),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                        style: mainStyle,
                        onPressed: () {},
                        child: const Text('7')),
                    ElevatedButton(
                        style: mainStyle,
                        onPressed: () {},
                        child: const Text('8')),
                    ElevatedButton(
                        style: mainStyle,
                        onPressed: () {},
                        child: const Text('9')),
                    ElevatedButton(
                        style: operatorStyle,
                        onPressed: () {},
                        child: const Text('x')),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                        style: mainStyle,
                        onPressed: () {},
                        child: const Text('4')),
                    ElevatedButton(
                        style: mainStyle,
                        onPressed: () {},
                        child: const Text('5')),
                    ElevatedButton(
                        style: mainStyle,
                        onPressed: () {},
                        child: const Text('6')),
                    ElevatedButton(
                        style: operatorStyle,
                        onPressed: () {},
                        child: const Text('-')),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                        style: mainStyle,
                        onPressed: () {},
                        child: const Text('1')),
                    ElevatedButton(
                        style: mainStyle,
                        onPressed: () {},
                        child: const Text('2')),
                    ElevatedButton(
                        style: mainStyle,
                        onPressed: () {},
                        child: const Text('3')),
                    ElevatedButton(
                        style: operatorStyle,
                        onPressed: () {},
                        child: const Text('+')),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                        style: mainStyle,
                        onPressed: () {},
                        child: const Text('0')),
                    ElevatedButton(
                        style: mainStyle,
                        onPressed: () {},
                        child: const Text(',')),
                    ElevatedButton(
                        style: operatorStyle,
                        onPressed: () {},
                        child: const Text('=')),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
