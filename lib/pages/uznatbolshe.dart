import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
//import 'package:flutter_application_5/pages/home_page.dart';
import 'package:unifamm/pages/home_page.dart';

class UznatBolshe extends StatefulWidget {
  const UznatBolshe({super.key});

  @override
  State<UznatBolshe> createState() => _UznatBolsheState();
}

class _UznatBolsheState extends State<UznatBolshe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    '',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 5,
                color: Color.fromARGB(213, 158, 158, 158),
                thickness: 0.2,
                //indent: 20,
                // endIndent: 0,
              ),
              const SizedBox(
                height: 20,
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
                    hintText: 'Имя',
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
                    hintText: 'Фамилия',
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
                    hintText: 'Возраст',
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
                    hintText: 'Почта/Номер телефона',
                    hintStyle: TextStyle(
                      color: Colors.white, //backgroundColor: Colors.white
                    ),
                    labelStyle: TextStyle(
                        color: Colors.white, backgroundColor: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FloatingActionButton.extended(
                label: Text('Записаться'), // <-- Text
                backgroundColor: Colors.black,
                //hoverColor: Colors.white,

                //icon: Icon(
                // <-- Icon
                // Icons.download,
                //size: 24.0,
                //  ),
                onPressed: () {
                  const snackBar =
                      SnackBar(content: Text('Вы успешно записались!'));

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
