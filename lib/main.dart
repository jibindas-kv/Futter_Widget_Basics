import 'package:flutter/material.dart';
import 'package:jibin_flutter/Car%20Rent%20Ui/Car_rent_bottom_navigation_bar.dart';
import 'package:jibin_flutter/Car%20Rent%20Ui/Get_Started.dart';
import 'package:jibin_flutter/Car%20Rent%20Ui/Home.dart';
import 'package:jibin_flutter/Car%20Rent%20Ui/Inbox.dart';
import 'package:jibin_flutter/Car%20Rent%20Ui/Profile.dart';
import 'package:jibin_flutter/Car%20Rent%20Ui/Wishlist.dart';
import 'package:jibin_flutter/Coffe%20Shop/CS_1.dart';
import 'package:jibin_flutter/Coffe%20Shop/CS_2.dart';
import 'package:jibin_flutter/Coffe%20Shop/CS_3.dart';
import 'package:jibin_flutter/Fruit%20Buy%20Ui/Banana.dart';
import 'package:jibin_flutter/Fruit%20Buy%20Ui/Drinks.dart';
import 'package:jibin_flutter/Fruit%20Buy%20Ui/Fruit_home.dart';
import 'package:jibin_flutter/Fruit%20Buy%20Ui/Fruit_navigation.dart';
import 'package:jibin_flutter/Navigation%20Task/nav_1.dart';
import 'package:jibin_flutter/Navigation%20Task/nav_2.dart';
import 'package:jibin_flutter/Pickers/Date_picker.dart';
import 'package:jibin_flutter/Pickers/Image_picker.dart';
import 'package:jibin_flutter/Stack%20Widget%20Task/Stack_page_1.dart';
import 'package:jibin_flutter/Stack%20Widget%20Task/Stack_page_2.dart';
import 'package:jibin_flutter/Tasks/Radio_Button_Task.dart';
import 'package:jibin_flutter/UI%20With%20Image/page_1.dart';
import 'package:jibin_flutter/Tasks/Whatsapp.dart';
import 'package:jibin_flutter/Widgets/Card_Widget.dart';
import 'package:jibin_flutter/Widgets/Check_box_widget.dart';
import 'package:jibin_flutter/Widgets/List_view_builder_widget.dart';
import 'package:jibin_flutter/Widgets/List_view_separter_widget.dart';
import 'package:jibin_flutter/Tasks/task_3.dart';
import 'package:jibin_flutter/1st%20Login%20Page/Login_page.dart';
import 'package:jibin_flutter/Widgets/Radio_Button_Eg.dart';
import 'package:jibin_flutter/Widgets/Stack_Widget.dart';
import 'package:jibin_flutter/Widgets/Tab_bar_widget.dart';
import '3 Ui Page With Images/page1.dart';
import '3 Ui Page With Images/page2.dart';
import '3 Ui Page With Images/page3.dart';
import '1st Login Page/Login_page_2.dart';
import '1st Login Page/Login_page_2.dart';
import 'Bottom_Navigation_Bar.dart';
import 'Coffe Shop/CS_2_Home.dart';
import 'Coffe Shop/CS_5.dart';
import 'Widgets/Expanded_Widget.dart';
import 'Navigation Task/nav_3.dart';
import 'Navigation/first_page.dart';
import 'Navigation/second_page.dart';
import 'Navigation/third_page.dart';
import 'Widgets/Image_widget.dart';
import 'UI With Image/page_2.dart';
import 'Widgets/List_view_widget.dart';
import 'Widgets/Radio_Button_Widget.dart';
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
      home: Fruit_navigation(),
    );
  }
}
