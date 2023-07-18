import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unifamm/pages/home_page.dart';

class MyList1 extends StatelessWidget {
  String name, email, phone, nomer;

  MyList1(
      {required this.name,
      required this.email,
      required this.phone,
      required this.nomer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      icon: Icon(
                        CupertinoIcons.back,
                        color: Colors.black,
                      )),
                  const SizedBox(
                    width: 170,
                  ),
                  // Text('Спорт', style: GoogleFonts.montserrat(color: Colors.black, fontSize: 24)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text(
                      'Название: ${name}',
                      style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Text('Возраст: ${phone}',
                        style: GoogleFonts.montserrat(
                            color: Colors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.w300)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 12.0, right: 12.0, bottom: 12.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Описание: ${email}',
                            style: GoogleFonts.montserrat(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          'Номер телефона: ${nomer}',
                          style: GoogleFonts.montserrat(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ])));
  }
}
