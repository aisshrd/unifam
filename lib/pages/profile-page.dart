import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unifamm/pages/home_page.dart';
import 'package:unifamm/pages/update-profile.dart';

class ProfilePage extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser;
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          SizedBox(
            height: 120,
            width: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network("src"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Амир',
            style: GoogleFonts.montserrat(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            '${user?.email}',
            style: GoogleFonts.montserrat(color: Colors.black, fontSize: 12),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => UpdateScreen())));
                },
                child: Text(
                  'Изменить профиль',
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
              )),
          const SizedBox(
            height: 30,
          ),
          const Divider(),
          SizedBox(
            height: 10,
          ),
          ListTile(
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.blue.withOpacity(0.1),
                ),
                child: Icon(
                  CupertinoIcons.settings,
                  color: Colors.blue,
                ),
              ),
              title: Text(
                'Настройки',
                style: GoogleFonts.montserrat(color: Colors.black),
              ),
              trailing: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: Icon(
                  CupertinoIcons.right_chevron,
                  size: 18.0,
                  color: Colors.grey,
                ),
              )),
          ListTile(
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.blue.withOpacity(0.1),
                ),
                child: Icon(
                  CupertinoIcons.info,
                  color: Colors.blue,
                ),
              ),
              title: Text(
                'Информация',
                style: GoogleFonts.montserrat(color: Colors.black),
              ),
              trailing: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: Icon(
                  CupertinoIcons.right_chevron,
                  size: 18.0,
                  color: Colors.grey,
                ),
              )),
          const Divider(
            color: Colors.grey,
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.blue.withOpacity(0.1),
                ),
                child: Icon(
                  Icons.exit_to_app,
                  color: Colors.blue,
                ),
              ),
              title: Text(
                'Выйти',
                style: GoogleFonts.montserrat(color: Colors.red),
              ),
              trailing: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: Icon(
                  CupertinoIcons.right_chevron,
                  size: 18.0,
                  color: Colors.grey,
                ),
              )),
        ]),
      )),
    );
  }
}
