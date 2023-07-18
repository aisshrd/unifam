import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class Mywidget3 extends StatelessWidget {
  const Mywidget3({super.key});

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
                      "https://t3.ftcdn.net/jpg/02/22/85/16/360_F_222851624_jfoMGbJxwRi5AWGdPgXKSABMnzCQo9RN.jpg"),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "Дмитрий",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Учитель по шахматам",
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
                      "11:00 - 13:00",
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
