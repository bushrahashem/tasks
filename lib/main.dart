import 'package:flutter/material.dart';
import 'package:tasks/tasks/task15.dart';
// import 'tasks/task1.dart';
// import 'tasks/task2.dart';
// import 'providers/login_provider.dart';
// import 'providers/product_provider.dart';
// import 'tasks/task15.dart';
// import 'tasks/task5.dart';
// import 'tasks/task6.dart';
// import 'tasks/task7.dart';
// import 'tasks/task8.dart';
// import 'package:provider/provider.dart';
// import 'views/product_view_widget.dart';

void main() {
  runApp(
    // If you need provider functionality, uncomment the below code:
    // MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(create: (context) => ProductProvider()),
    //     ChangeNotifierProvider(create: (context) => LoginProvider()),
    //   ],
    //   child: const MyApp(),
    // ),
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Set the home widget to the task you want to use
      home: const Task15(),
    );
  }
}
