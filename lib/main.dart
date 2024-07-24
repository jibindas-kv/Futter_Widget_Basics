import 'package:flutter/material.dart';
import 'package:jibin_flutter/Widgets_container.dart';
import 'package:jibin_flutter/Task_1_squares.dart';
import 'package:jibin_flutter/row_widget.dart';
import 'package:jibin_flutter/task_2.dart';
import 'package:jibin_flutter/task_3.dart';

import 'Icon_widget.dart';
import 'row_and_column_widget.dart';
import 'TextButton_widget.dart';
import 'Text_widget.dart';

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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Second_ui(),
    );
  }
}
