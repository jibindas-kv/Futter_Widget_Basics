import 'package:flutter/material.dart';

class Radio_Button_Task extends StatefulWidget {
  @override
  _Radio_Button_TaskState createState() => _Radio_Button_TaskState();
}

class _Radio_Button_TaskState extends State<Radio_Button_Task> {
  String _delivery = 'Standard';
  String _payment = 'card';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Row(
              children: [
                Text('Delivery Method',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    )),
              ],
            ),
            SizedBox(height: 20,),
            SingleChildScrollView(
              //scrolling
              scrollDirection: Axis.horizontal, // Allows horizontal scrolling
              child: Row(
                children: [
                  Container(
                    width: 200,
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Standard',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                )),
                            SizedBox(
                              width: 50,
                            ),
                            Radio<String>(
                              value: 'Standard',
                              groupValue: _delivery,
                              onChanged: (String? value) {
                                setState(() {
                                  _delivery = value!;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('+10 bussiness days'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text('Rs.60',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15), // Space between containers
                  Container(
                    width: 200,
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Express',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                )),
                            SizedBox(
                              width: 50,
                            ),
                            Radio<String>(
                              value: 'Express',
                              groupValue: _delivery,
                              onChanged: (String? value) {
                                setState(() {
                                  _delivery = value!;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('2-5 bussiness days'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text('Rs.120',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    width: 220,
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Super Test',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                )),
                            SizedBox(
                              width: 50,
                            ),
                            Radio<String>(
                              value: 'Super Test',
                              groupValue: _delivery,
                              onChanged: (String? value) {
                                setState(() {
                                  _delivery = value!;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('1 bussiness day'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text('Rs.250',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('You Where Selected: $_delivery',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                    color: Colors.blue)),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Text('Payment Method',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    )),
              ],
            ),
            SizedBox(height: 20,),
            SingleChildScrollView(
              //scrolling
              scrollDirection: Axis.horizontal, // Allows horizontal scrolling
              child: Row(
                children: [
                  Container(
                    width: 300,
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('******8304               ',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                )),
                            SizedBox(
                              width: 50,
                            ),
                            Radio<String>(
                              value: 'card',
                              groupValue: _payment,
                              onChanged: (String? value) {
                                setState(() {
                                  _payment = value!;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Last time used May 26 2022'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15), // Space between containers
                  Container(
                    width: 300,
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('******@oksbi           ',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                )),
                            SizedBox(
                              width: 50,
                            ),
                            Radio<String>(
                              value: 'upi',
                              groupValue: _payment,
                              onChanged: (String? value) {
                                setState(() {
                                  _payment = value!;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Last time used 2 minuts ago'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15),
                  SizedBox(width: 10),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Payment Option Selected: $_payment',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                    color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}
