import 'package:flutter/material.dart';
import 'package:jibin_flutter/Coffe%20Shop/CS_1.dart';
import 'package:jibin_flutter/Coffe%20Shop/CS_2.dart';
import 'package:jibin_flutter/Coffe%20Shop/CS_3.dart';
import 'package:jibin_flutter/Navigation%20Task/nav_1.dart';
import 'package:jibin_flutter/Navigation%20Task/nav_2.dart';
import 'package:jibin_flutter/UI%20With%20Image/page_1.dart';
import 'package:jibin_flutter/Task_1_squares.dart';
import 'package:jibin_flutter/Whatsapp.dart';
import 'package:jibin_flutter/Widgets/Card_Widget.dart';
import 'package:jibin_flutter/Widgets/List_view_builder_widget.dart';
import 'package:jibin_flutter/Widgets/List_view_separter_widget.dart';
import 'package:jibin_flutter/task_2.dart';
import 'package:jibin_flutter/task_3.dart';
import 'package:jibin_flutter/1st%20Login%20Page/Login_page.dart';
import '3 Ui Page With Images/page1.dart';
import '3 Ui Page With Images/page2.dart';
import '3 Ui Page With Images/page3.dart';
import '1st Login Page/Login_page_2.dart';
import '1st Login Page/Login_page_2.dart';
import 'Bottom_Navigation_Bar.dart';
import 'Coffe Shop/CS_2_Home.dart';
import 'Coffe Shop/CS_5.dart';
import 'Indipendance_day.dart';
import 'Widgets/Expanded_Widget.dart';
import 'Navigation Task/nav_3.dart';
import 'Navigation/first_page.dart';
import 'Navigation/second_page.dart';
import 'Navigation/third_page.dart';
import 'Textfield_Task.dart';
import 'Ui_With_Bottom_Navigation.dart';
import 'Widgets/Image_widget.dart';
import 'UI With Image/page_2.dart';
import 'Widgets/List_view_widget.dart';
import 'Widgets/Text_widget.dart';
import 'Widgets/TextField_Widget.dart';
import 'Widgets/Toggle_Button.dart';
import 'Widgets/Toggle_Button_Widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      home: Card_widget(),
    );
  }
}
