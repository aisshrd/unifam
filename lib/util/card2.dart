import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class Mywidget2 extends StatelessWidget {
  const Mywidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 7.0,
                  spreadRadius: 4.0,
                  offset: Offset(
                    5.0,
                    5.0,
                  ),
                )
              ]),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://media.istockphoto.com/id/1317784594/photo/headshot-of-mature-50-years-old-asian-business-woman-on-grey-background.jpg?s=612x612&w=0&k=20&c=eOmdf5BbEG75m9MBSTvhjA5uMDmUj0zDtXd3lv0nm8U="),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "Айнур",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Диетолог",
                style: GoogleFonts.montserrat(
                    color: Color.fromARGB(255, 101, 101, 101),
                    fontSize: 10,
                    fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 40,
                width: 130,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 230, 230, 230),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.clock,
                          color: Colors.black,
                          size: 15,
                        )),
                    // const SizedBox(width: 3,),
                    Text(
                      "09:00 - 10:30",
                      style: GoogleFonts.montserrat(
                          color: Colors.black, fontSize: 12),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.phone,
                        color: Colors.black,
                        size: 15,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.mail,
                        color: Colors.black,
                        size: 15,
                      )),
                ],
              )
            ],
          )),
    );
    ;
  }
}
