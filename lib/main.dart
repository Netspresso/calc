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
          primarySwatch: Colors.blue,
          primaryColor: Color.fromARGB(255, 68, 68, 68),
          textTheme: TextTheme(
              bodyText2: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ))),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final ButtonStyle mainStyle = Container.styleFrom(
    //   backgroundColor: const Color.fromARGB(255, 68, 68, 68),
    //   shape: const RoundedRectangleBorder(
    //       borderRadius: BorderRadius.all(Radius.circular(25))),
    //   padding: const EdgeInsets.all(10.0),
    //   textStyle: const TextStyle(fontSize: 20),
    //   minimumSize: Size(50, 50),
    // );
    // final ButtonStyle operatorStyle = Container.styleFrom(
    //   backgroundColor: const Color.fromARGB(255, 255, 166, 34),
    //   shape: const RoundedRectangleBorder(
    //       borderRadius: BorderRadius.all(Radius.circular(25))),
    //   textStyle: const TextStyle(fontSize: 20),
    //   minimumSize: Size(50, 50),
    // );
    // final ButtonStyle topStyle = Container.styleFrom(
    //   backgroundColor: const Color.fromARGB(255, 173, 173, 173),
    //   shape: const RoundedRectangleBorder(
    //       borderRadius: BorderRadius.all(Radius.circular(25))),
    //   foregroundColor: Colors.black,
    //   textStyle: const TextStyle(fontSize: 20),
    //   minimumSize: Size(50, 50),
    // );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          // mainAxisSize: MainAxisAlignment.max,
          children: <Widget>[
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        color: Color.fromARGB(255, 173, 173, 173),
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            'AC',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(child: const Text('.')),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(child: const Text('.')),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(child: const Text('/')),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 68, 68, 68),
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(20),
                      child: Center(
                        child: const Text(
                          '7',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      color: Color.fromARGB(255, 68, 68, 68),
                      padding: EdgeInsets.all(20),
                      child: Center(
                        child: const Text(
                          '8',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      color: Color.fromARGB(255, 68, 68, 68),
                      padding: EdgeInsets.all(20),
                      child: Center(
                        child: const Text(
                          '9',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      color: Color.fromARGB(255, 255, 166, 34),
                      padding: EdgeInsets.all(20),
                      child: Center(
                        child: const Text(
                          'x',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(child: const Text('4')),
                    Container(child: const Text('5')),
                    Container(child: const Text('6')),
                    Container(child: const Text('-')),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(child: const Text('1')),
                    Container(child: const Text('2')),
                    Container(child: const Text('3')),
                    Container(child: const Text('+')),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(child: const Text('0')),
                    Container(child: const Text(',')),
                    Container(child: const Text('=')),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
