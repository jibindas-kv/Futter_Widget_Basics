import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Url_work extends StatelessWidget {
  final String phoneNumber =
      "tel:+1234567890"; // Replace with your mobile number
  final String _url =
      "https://www.figma.com/design/XWxSTjGPs4YqIFU15E9Xx4/fine-arts?node-id=14-3&t=hQrQ3GYn3ZAt1loZ-0"; // Replace with your YouTube video URL

  // Function to launch the phone dialer
  void _makePhoneCall() async {
    if (await canLaunch(phoneNumber)) {
      await launch(phoneNumber);
    } else {
      throw 'Could not launch $phoneNumber';
    }
  }

  // Function to launch the YouTube video
  void url_launch() async {
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('URL Launcher Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: Colors.grey,
              child: ListTile(
                  trailing: IconButton(
                      onPressed: () {
                        _makePhoneCall();
                      },
                      icon: Icon(Icons.call)),
                  title: Text("name"),
                  subtitle: TextButton(
                    onPressed: () {
                      url_launch();
                    },
                    child: const Text("Tap"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}