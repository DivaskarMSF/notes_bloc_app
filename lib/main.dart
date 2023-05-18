import 'bloc/bloc_imports.dart';
import 'package:notes_bloc_app/bloc/notes_bloc.dart';

import 'package:flutter/material.dart';
import 'package:notes_bloc_app/screens/home_screen.dart';
//import 'package:flutter/src/rendering/proxy_box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const HomeScreen(),
      ),
    );
  }
}
