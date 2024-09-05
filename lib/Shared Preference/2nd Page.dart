import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Second_page extends StatefulWidget {
  const Second_page({super.key});

  @override
  State<Second_page> createState() => _Second_pageState();
}

class _Second_pageState extends State<Second_page> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get_data_sp();
  }
  var Name;
  var Place;
  Future<void> Get_data_sp()async{
    SharedPreferences data = await SharedPreferences.getInstance();
    setState(() {
      Name = data.getString("Name");
      Place = data.getString("Place");
      print("Get Successful//////////////////");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name : $Name",style: TextStyle(fontSize: 30),),
            SizedBox(height: 40,),
            Text("Place : $Place",style: TextStyle(fontSize: 30),),
          ],
        ),
      ),

    );
  }
}
