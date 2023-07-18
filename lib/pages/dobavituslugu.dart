import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
//import 'package:flutter_application_5/pages/home_page.dart';
//import 'package:flutter_application_5/util/button.dart';
import 'package:unifamm/pages/home_page.dart';

class DobavitUslugu extends StatefulWidget {
  const DobavitUslugu({super.key});

  @override
  State<DobavitUslugu> createState() => _DobavitUsluguState();
}

class _DobavitUsluguState extends State<DobavitUslugu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      )),
                  SizedBox(width: 135),
                  Text(
                    'Добавить услугу',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Divider(
                height: 5,
                color: Color.fromARGB(212, 255, 255, 255),
                thickness: 0.2,
                //indent: 20,
                // endIndent: 0,
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    fillColor: Colors.white,
                    focusColor: Colors.white,
                    hoverColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Название организации',
                    hintStyle: TextStyle(
                      color: Colors.white, //backgroundColor: Colors.white
                    ),
                    labelStyle: TextStyle(
                        color: Colors.white, backgroundColor: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    fillColor: Colors.white,
                    focusColor: Colors.white,
                    hoverColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Тема',
                    hintStyle: TextStyle(
                      color: Colors.white, //backgroundColor: Colors.white
                    ),
                    labelStyle: TextStyle(
                        color: Colors.white, backgroundColor: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    fillColor: Colors.white,
                    focusColor: Colors.white,
                    hoverColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Возрастная категория',
                    hintStyle: TextStyle(
                      color: Colors.white, //backgroundColor: Colors.white
                    ),
                    labelStyle: TextStyle(
                        color: Colors.white, backgroundColor: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // DropdownButtonExample(),
              FloatingActionButton.extended(
                label: Text('Добавить'), // <-- Text
                backgroundColor: Colors.black,
                //hoverColor: Colors.white,

                //icon: Icon(
                // <-- Icon
                // Icons.download,
                //size: 24.0,
                //  ),
                onPressed: () {
                  const snackBar = SnackBar(
                      content: Text('Вы успешно добавили свою услугу!'));

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
