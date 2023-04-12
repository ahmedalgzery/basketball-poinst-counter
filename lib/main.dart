// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points/cubit/counter_state.dart';
import 'package:points/cubit/countert_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
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
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    CounterCubit cubite = CounterCubit.get(context);
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'points Counter',
              ),
            ),
            body: Column(
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
                          '${cubite.teamA}',
                          style: const TextStyle(
                            fontSize: 120.0,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            cubite.increment(teme: 'A', index: 1);
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
                            cubite.increment(teme: 'A', index: 2);
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
                            cubite.increment(teme: 'A', index: 3);
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
                          '${cubite.teamB}',
                          style: const TextStyle(
                            fontSize: 120.0,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            cubite.increment(teme: 'B', index: 1);
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
                            cubite.increment(teme: 'B', index: 2);
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
                            cubite.increment(teme: 'B', index: 3);
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
                    cubite.reset();
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
          );
        },
        listener: (context, state) {});
  }
}
