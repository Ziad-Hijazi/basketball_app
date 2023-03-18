import 'package:basketball/cubit/counter_cubit.dart';
import 'package:basketball/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(basketball());
}

class basketball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text('Points Center'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamAPoint}',
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(8),
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncrement(team: 'A', buttonNumber: 1);
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(8),
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncrement(team: 'A', buttonNumber: 2);
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(8),
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncrement(team: 'A', buttonNumber: 3);
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    child: VerticalDivider(
                      indent: 50,
                      endIndent: 50,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamBPoint}',
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(8),
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncrement(team: 'B', buttonNumber: 1);
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(8),
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncrement(team: 'B', buttonNumber: 2);
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(8),
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncrement(team: 'B', buttonNumber: 3);
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(8),
                    backgroundColor: Colors.orange,
                    minimumSize: Size(150, 50)),
                onPressed: () {},
                child: Text(
                  'Reset',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
