import 'package:flutter/material.dart';

void main() {
  runApp(const BusniessCardApp());
}

class BusniessCardApp extends StatelessWidget {
  const BusniessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF2B475E),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(999),
            //   child: Image(
            //     image: AssetImage(
            //         'assets/images/2022-01-19_06-29-41-33803e677e5b58cfcf6c40e60220beb3.png'),
            //     width: 200,
            //     fit: BoxFit.cover,
            //   ),
            // ),
            const CircleAvatar(
              radius: 93,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage(
                    'assets/images/2022-01-19_06-29-41-33803e677e5b58cfcf6c40e60220beb3.png'),
              ),
            ),
            const Text(
              "Basmala Hesham",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontFamily: 'Pacifico',
              ),
            ),
            const Text(
              "FLUTTER DEVELOPER",
              style: TextStyle(
                color: Color(0XFF6C8090),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              color: Color(0XFF6C8090),
              thickness: 2,
              endIndent: 60,
              indent: 60,
              height: 15,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: const ListTile(
                leading: Icon(
                  Icons.phone,
                  size: 32,
                  color: Color(0xFF2B475E),
                ),
                title: Text(
                  '(+20) 12346779',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: const ListTile(
                leading: Icon(
                  Icons.mail,
                  size: 32,
                  color: Color(0xFF2B475E),
                ),
                title: Text(
                  'basmhesh@gmail.com',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            /*Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8,),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 65,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16,),
                      child: Icon(
                        Icons.phone,
                        size: 32,
                        color: Color(0xFF2B475E),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 22,),
                      child: Text(
                        '(+20) 12346779',
                        style: TextStyle(fontSize: 24,),
                      ),
                    ),
                  ],
                ),
              ),
            ),*/
            /*Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8,),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 65,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22,),
                      child: Icon(
                        Icons.mail,
                        size: 32,
                        color: Color(0xFF2B475E),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16,),
                      child: Text(
                        'basmhesh@gmail.com',
                        style: TextStyle(fontSize: 24,),
                      ),
                    ),
                  ],
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
