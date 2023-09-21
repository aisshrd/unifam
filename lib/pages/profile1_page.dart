import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final user = FirebaseAuth.instance.currentUser;

  Future<void> signOut() async {
    final navigator = Navigator.of(context);

    await FirebaseAuth.instance.signOut();

    navigator.pushNamedAndRemoveUntil(
        '/login', (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios, // add custom icons also
          ),
        ),
        title: const Text('Аккаунт'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Open shopping cart',
            onPressed: () => signOut(),
          ),
        ],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: CircleAvatar(
                radius: 45,
                backgroundImage: NetworkImage(
                    'https://cdn5.vectorstock.com/i/1000x1000/45/79/male-avatar-profile-picture-silhouette-light-vector-4684579.jpg'),
              ),
            ),
          ),
          SizedBox(
            width: 67,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Text(
                    'Амир',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 160,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Text(
                    '${user?.email}',
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 65,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Text(
                    'Волонтер',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Edit',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold, fontSize: 17, color: Colors.blue),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 14,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 90,
            width: 360,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.blue,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8.0,
                    spreadRadius: 6.0,
                    offset: Offset(
                      5.0,
                      5.0,
                    ),
                  )
                ]),
            child: Column(
              children: [
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Количество  курсов:',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      '76',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 90,
            width: 360,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.blue,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8.0,
                    spreadRadius: 6.0,
                    offset: Offset(
                      5.0,
                      5.0,
                    ),
                  )
                ]),
            child: Column(
              children: [
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Количество Uni баллов:',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      '1257',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 90,
            width: 360,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.blue,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8.0,
                    spreadRadius: 6.0,
                    offset: Offset(
                      5.0,
                      5.0,
                    ),
                  )
                ]),
            child: Column(
              children: [
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Количество часов в приложений:',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      '65',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
