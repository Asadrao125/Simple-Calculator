import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String result = "Result";
  TextEditingController numController1 = new TextEditingController();
  TextEditingController numController2 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$result',
              style: Theme.of(context).textTheme.headline4,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.input),
                  labelText: "Enter 1st Number",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                autofocus: true,
                controller: numController1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.input),
                  border: OutlineInputBorder(),
                  labelText: "Enter 2nd Number",
                ),
                keyboardType: TextInputType.number,
                autofocus: true,
                controller: numController2,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  int sum = int.parse(numController1.text) +
                      int.parse(numController2.text);
                  result = sum.toString();
                });
              },
              child: Text("Addition"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  double sub = double.parse(numController1.text) /
                      double.parse(numController2.text);
                  result = sub.toString();
                });
              },
              child: Text("Division"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  int sub = int.parse(numController1.text) -
                      int.parse(numController2.text);
                  result = sub.toString();
                });
              },
              child: Text("Subtraction"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  int sub = int.parse(numController1.text) *
                      int.parse(numController2.text);
                  result = sub.toString();
                });
              },
              child: Text("Multiplication"),
            ),
          ],
        ),
      ),
    );
  }
}
