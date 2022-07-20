import 'package:first/news_app/data/new_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  late NewsModel newsModel;

  String MopileNumber = '972595659707';
  String whatsapp = 'https://wa.me/00970595659707?text=hello';
  SendMessageByWhatsApp(String phone, String message) {
    String url = 'whatsapp://send?phone=$phone&text=${Uri.encodeFull(message)}';
    launchUrl(Uri.parse(url));
  }

  _sendingSMS() async {
    var url = Uri.parse("sms:972595659707");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _sendingMails() async {
    var url = Uri.parse("mailto:joseph.ana.19221@gmail.com");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              _makePhoneCall(MopileNumber);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.call,
                ),
                Text('Contact with phone'),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: (() {
              SendMessageByWhatsApp('00970595659707', 'Hello world!');
            }),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.whatsapp,
                ),
                Text('Contact with whatsapp'),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: (() {
              _sendingMails();
            }),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.email,
                ),
                Text('Contact with Email'),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: (() {
              _sendingSMS();
            }),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.sms,
                ),
                Text('Contact with SMS'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
