import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unifamm/pages/profile-page.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            icon: Icon(
              CupertinoIcons.back,
              color: Colors.black,
            )),
        title: Text(
          'Изменить Профиль',
          style: GoogleFonts.montserrat(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network('src'),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.yellow),
                        child: Icon(
                          CupertinoIcons.camera,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Form(
                    child: Column(children: [
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text(
                          'ФИО',
                          style: GoogleFonts.montserrat(color: Colors.black),
                        ),
                        prefixIcon: Icon(CupertinoIcons.person)),
                  ),
                  SizedBox(
                    height: 3.5,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text(
                          'Почта',
                          style: GoogleFonts.montserrat(color: Colors.black),
                        ),
                        prefixIcon: Icon(CupertinoIcons.mail)),
                  ),
                  SizedBox(
                    height: 3.5,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text(
                          'Номер телефона',
                          style: GoogleFonts.montserrat(color: Colors.black),
                        ),
                        prefixIcon: Icon(CupertinoIcons.phone)),
                  ),
                  SizedBox(
                    height: 3.5,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text(
                          'Пароль',
                          style: GoogleFonts.montserrat(color: Colors.black),
                        ),
                        prefixIcon: Icon(CupertinoIcons.padlock)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UpdateScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                      ),
                      child: Text(
                        'Изменить Профиль',
                        style: GoogleFonts.montserrat(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ]))
              ],
            )),
      ),
    );
  }
}
