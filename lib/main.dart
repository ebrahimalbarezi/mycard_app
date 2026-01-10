import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
                radius: 50.0,
                backgroundImage: AssetImage('images/my_image.png'),
              ),
              Text(
                'ابرهيم البارزي',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //SizedBox(height: 10.0),
              Text(
                'مهندس برمجيات',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 20.0,
                  color: Colors.white60,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 30.0,
                width: 150.0,
                child: Divider(color: Colors.white60),
              ),

              Card(
                margin: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: const Color.fromARGB(255, 5, 114, 156),
                  ),
                  title: Text(
                    '967 774 936 845',
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 20.0,
                      color: const Color.fromARGB(255, 8, 0, 0),
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: const Color.fromARGB(255, 6, 104, 143),
                  ),
                  title: Text(
                    'IbrahimAlbarzi@gmail.com',
                    style: TextStyle(
                      fontFamily: 'cairo',
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

        // Row(
        //             children: [
        //               Icon(
        //                 Icons.email,
        //                 color: const Color.fromARGB(255, 6, 104, 143),
        //               ),
        //               SizedBox(width: 10.0),
        //               Text(
        //                 'Albarzi@gmail.com',
        //                 style: TextStyle(
        //                   fontFamily: 'cairo',
        //                   fontSize: 20.0,
        //                   color: Colors.black,
        //                 ),
        //               ),
        //             ],
        //           ),
        //  child: Row(
        //                 children: [
        //                   Icon(
        //                     Icons.phone,
        //                     color: const Color.fromARGB(255, 5, 114, 156),
        //                   ),
        //                   SizedBox(width: 10.0),
        //                   Text(
        //                     '967 774 936 845',
        //                     style: TextStyle(
        //                       fontFamily: 'Cairo',
        //                       fontSize: 20.0,
        //                       color: const Color.fromARGB(255, 8, 0, 0),
        //                     ),
        //                   ),
        //                 ],
        //               ),