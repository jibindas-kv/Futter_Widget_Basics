import 'package:flutter/material.dart';
import 'package:jibin_flutter/Biodata/Biodata_details.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Biodata_field extends StatefulWidget {
  const Biodata_field({super.key});

  @override
  State<Biodata_field> createState() => _Biodata_fieldState();
}

class _Biodata_fieldState extends State<Biodata_field> {
  var Name_ctrl = TextEditingController();
  var Place_ctrl = TextEditingController();
  var Email_ctrl = TextEditingController();
  var Qualification_ctrl = TextEditingController();
  String _selectedValue = 'Male';

  String Degree = 'BSC CS';

  final List<String> _options = [
    'BSC CS',
    'BCA',
    'B Tech',
    'MSC CS',
    'MCA',
    'M Tech',
  ];
  Future<void> Add_data_sp() async {
    SharedPreferences data = await SharedPreferences.getInstance();
    data.setString("Name", Name_ctrl.text);
    data.setString("Place", Place_ctrl.text);
    data.setString("Email", Email_ctrl.text);
    data.setString("Qualification", Qualification_ctrl.text);
    data.setString("Gender", _selectedValue);
    data.setString("Degree", Degree);
    print(
        "Added Successfully/////////////////////////////////////////////////////");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
                child: Text(
              'Biodata',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            )),
            SizedBox(
              height: 10,
            ),
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
                            borderSide:
                                BorderSide(color: Colors.black, width: 3),
                            borderRadius: BorderRadius.circular(5)),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
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
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(5)),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                    controller: Email_ctrl,
                    decoration: InputDecoration(
                        hintText: 'Email',
                        focusColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(5)),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                    controller: Qualification_ctrl,
                    decoration: InputDecoration(
                        hintText: 'Qualification',
                        focusColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(5)),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                height: 55,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.white,
                ),
                child: DropdownButton<String>(
                  value: Degree,
                  items: _options.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      Degree = newValue!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Gender :",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    ListTile(
                      title: Text(
                        'Male',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      leading: Radio<String>(
                        value: 'Male',
                        groupValue: _selectedValue,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedValue = value!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Female',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      leading: Radio<String>(
                        value: 'Female',
                        groupValue: _selectedValue,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedValue = value!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Others',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      leading: Radio<String>(
                        value: 'Others',
                        groupValue: _selectedValue,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedValue = value!;
                          });
                        },
                      ),
                    ),
                    // Text('Selected: $_selectedValue'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: Add_data_sp, child: Text("Submit")),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 90, right: 90),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Biodata_details();
                    },
                  ));
                },
                child: Container(
                  height: 50,
                  width: 390,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Text(
                    'Show Entered Details',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
