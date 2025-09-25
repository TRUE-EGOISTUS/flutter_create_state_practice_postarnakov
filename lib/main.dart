import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CounterApp(), debugShowCheckedModeBanner: false);
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});
  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;
  void increment() {
    setState(() {
      counter++;
    });
  }

  void TenTimesIncrement() {
    setState(() {
      counter += 10;
    });
  }

  void DropCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Практика №4"),
        titleTextStyle: TextStyle(color: Colors.blue, fontSize: 24),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Значение счетчика: $counter",
            style: TextStyle(color: Colors.deepOrange),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: increment,
                onLongPress: TenTimesIncrement,
                child: Container(
                  width: 100,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.green,
                  ),
                  alignment: Alignment.center,
                  child: Text("Увеличить",
                  style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 200),
               GestureDetector(
                onTap: DropCounter,
                child: Container(
                  width: 100,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.red,
                  ),
                  alignment: Alignment.center,
                  child: Text("Сбросить",
                  style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
