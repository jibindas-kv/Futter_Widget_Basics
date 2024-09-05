import 'package:flutter/material.dart';
import 'package:jibin_flutter/Shared%20Preference/2nd%20Page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class first_page extends StatefulWidget {
  const first_page({super.key});

  @override
  State<first_page> createState() => _first_pageState();
}

class _first_pageState extends State<first_page> {
  var Name_ctrl = TextEditingController();
  var Place_ctrl = TextEditingController();
  Future<void> Add_data_sp() async {
    SharedPreferences data = await SharedPreferences.getInstance();
    data.setString("Name", Name_ctrl.text);
    data.setString("Place", Place_ctrl.text);
    print(
        "Added Successfully/////////////////////////////////////////////////////");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextFormField(
                  controller: Name_ctrl,
                  decoration: InputDecoration(
                      hintText: 'Name',
                      focusColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 3),
                          borderRadius: BorderRadius.circular(5)),
                      fillColor: Colors.white,
                      filled: true),
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextFormField(
                  controller: Place_ctrl,
                  decoration: InputDecoration(
                      hintText: 'Place',
                      focusColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(5)),
                      fillColor: Colors.white,
                      filled: true),
                ),
              )
            ],
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 50, left: 90, right: 90),
          //   child: InkWell(
          //     onTap: () {
          //       Add_data_sp();
          //     },
          //     child: Container(
          //       height: 50,
          //       width: 390,
          //       decoration: BoxDecoration(
          //           color: Colors.black,
          //           borderRadius: BorderRadius.circular(5)),
          //       child: Center(
          //           child: Text(
          //         'Submit',
          //         style: TextStyle(
          //             fontSize: 18,
          //             fontWeight: FontWeight.bold,
          //             color: Colors.white),
          //       )),
          //     ),
          //   ),
          // ),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: Add_data_sp, child: Text("Submit")),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 90, right: 90),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Second_page();
                  },
                ));
              },
              child: Container(
                height: 50,
                width: 390,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: Text(
                  'Second Page',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
