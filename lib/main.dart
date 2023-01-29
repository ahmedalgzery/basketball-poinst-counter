// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int TeamA = 0;
  int TeamB = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'points Counter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.orange),
            minimumSize: MaterialStatePropertyAll(
              Size(150, 50),
            ),
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'points Counter',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$TeamA',
                        style: const TextStyle(
                          fontSize: 160.0,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamA++;
                          });
                        },
                        child: const Text(
                          'Add 1 Points',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamA += 2;
                          });
                        },
                        child: const Text(
                          'Add 2 Points',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamA += 3;
                          });
                        },
                        child: const Text(
                          'Add 3 Points',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 500.0,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 50.0,
                      endIndent: 50.0,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$TeamB',
                        style: const TextStyle(
                          fontSize: 160.0,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamB++;
                          });
                        },
                        child: const Text(
                          'Add 1 Points',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamB += 2;
                          });
                        },
                        child: const Text(
                          'Add 2 Points',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamB += 3;
                          });
                        },
                        child: const Text(
                          'Add 3 Points',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    TeamA = 0;
                    TeamB = 0;
                  });
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
