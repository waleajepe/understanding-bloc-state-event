import 'package:flutter/material.dart';
import 'package:state_event/request_data/bloc/bloc.dart';
import 'package:state_event/request_data/presentation/request_data_page.dart';

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
        ),
        home: BlocProvider(
          create: (context) => RequestDataBloc(),
          child: const RequestDataPage(),
        ));
  }
}
