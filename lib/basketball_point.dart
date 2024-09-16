import 'package:bassketball/cubit/counter_cubit.dart';
import 'package:bassketball/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasketballPoint extends StatelessWidget {
  BasketballPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: const Text(
                "Basketball Counter",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.sports_baseball,
                    size: 45,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            body: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Team A",
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          "${BlocProvider.of<CounterCubit>(context).teamAPoints}",
                          style: const TextStyle(fontSize: 130),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 12.0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  minimumSize: const Size(150, 50)),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .TeamAIncrement(1);
                              },
                              child: const Text(
                                "Add 1 Point",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 12.0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  minimumSize: const Size(150, 50)),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .TeamAIncrement(2);
                              },
                              child: const Text(
                                "Add 2 Point",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              )),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 50)),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamAIncrement(3);
                            },
                            child: const Text(
                              "Add 3 Point",
                              style:
                                  TextStyle(fontSize: 17, color: Colors.black),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 430,
                      child: VerticalDivider(
                        thickness: 2,
                        color: Colors.orange,
                        //indent: 30,
                        //endIndent: 180,
                      ),
                    ),
                    Column(
                      children: [
                        const Text(
                          "Team B",
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          "${BlocProvider.of<CounterCubit>(context).teamBPoints}",
                          style: const TextStyle(fontSize: 130),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 12.0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  minimumSize: const Size(150, 50)),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .TeamBIncrement(1);
                              },
                              child: const Text(
                                "Add 1 Point",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 12.0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  minimumSize: const Size(150, 50)),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .TeamBIncrement(2);
                              },
                              child: const Text(
                                "Add 2 Point",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              )),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 50)),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamBIncrement(3);
                            },
                            child: const Text(
                              "Add 3 Point",
                              style:
                                  TextStyle(fontSize: 17, color: Colors.black),
                            )),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: SizedBox(
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).ResetPoints();
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.restart_alt,
                              color: Colors.black,
                            ),
                            Text(
                              "Reset",
                              style:
                                  TextStyle(fontSize: 17, color: Colors.black),
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            ),
          );
        },
        listener: (context, state) {});
  }
}
