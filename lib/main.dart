import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // فتح الاتصال
  Future<void> _callPhone(String phoneNumber) async {
    final Uri uri = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  // فتح البريد
  Future<void> _sendEmail(String email) async {
    final Uri uri = Uri(scheme: 'mailto', path: email);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  void callPhone() {
    _launchUrl(Uri.parse('tel:967774936845'));
  }

  void sendEmail() {
    _launchUrl(Uri.parse('mailto:IbrahimAlbarzi@gmail.com'));
  }

  void openWhatsApp() {
    _launchUrl(Uri.parse('https://wa.me/967774936845'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 2, 106, 138),

        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/my_image.png'),
              ),

              SizedBox(height: 10),

              Text(
                'ابرهيم البارزي',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                'مهندس برمجيات',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 18,
                  color: Colors.white70,
                  letterSpacing: 2,
                ),
              ),

              SizedBox(height: 30),
              Divider(color: Colors.white60, indent: 80, endIndent: 80),

              // 📞 هاتف
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: InkWell(
                  splashColor: Colors.blue.withOpacity(0.2),
                  onTap: callPhone,
                  child: ListTile(
                    leading: Icon(Icons.phone, color: Colors.blue),
                    title: Text('967 774 936 845'),
                  ),
                ),
              ),

              // ✉️ بريد
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: InkWell(
                  splashColor: Colors.red.withOpacity(0.2),
                  onTap: sendEmail,
                  child: ListTile(
                    leading: Icon(Icons.email, color: Colors.red),
                    title: Text('IbrahimAlbarzi@gmail.com'),
                  ),
                ),
              ),

              // 🟢 واتساب
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: InkWell(
                  splashColor: Colors.green.withOpacity(0.2),
                  onTap: openWhatsApp,
                  child: ListTile(
                    leading: Icon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.green,
                    ),

                    title: Text('تواصل عبر واتساب'),
                  ),
                ),
              ),

              Spacer(),

              // ©️ حقوق النشر
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Text(
                  '© 2026 – Ibrahim Albarzi',
                  style: TextStyle(color: Colors.white60, fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
