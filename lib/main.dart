import 'package:flutter/material.dart';

// Personal Parameters
// Roll Number: 04072313032
// Last 3 digits: 032
// myThreshold = 0 + 3 + 2 + 5 = 10
// First name: Rafia
// mySeedColor = Colors.red

const int myThreshold = 10;
const Color mySeedColor = Colors.red;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CS 442 Week 1 Counter App',
      theme: ThemeData(colorSchemeSeed: mySeedColor, useMaterial3: true),
      home: const MyHomePage(title: 'CS 442 MAD Counter App'),
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
  int _resetCount = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });

    setState(() {
      _resetCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Times you Pushed the :'),

            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            if (_counter > myThreshold)
              const Text(
                "You're on a roll!",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

            const SizedBox(height: 16),

            Text(
              'Resets used: $_resetCount',
              style: const TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 24),

            const Text(
              'Built by Rafia Naeem · 04072313032',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),

      // Two floating action buttons
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Reset button
          FloatingActionButton(
            onPressed: _resetCounter,
            tooltip: 'Reset',
            child: const Icon(Icons.refresh),
          ),

          const SizedBox(height: 12),

          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
