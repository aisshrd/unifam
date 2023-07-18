//import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:unifamm/home.dart';
import 'package:unifamm/main.dart';
import 'package:unifamm/main1.dart';
import 'package:unifamm/main2.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:unifamm/pages/profile1_page.dart';
//import 'package:login_dribble/main1.dart';
//import 'package:login_dribble/main.dart';
//import 'package:login_dribble/main1.dart';
//import 'package:flutter_application_5/pages/dobavituslugu.dart';
//import 'package:flutter_application_5/util/cardwidget.dart';
//import 'package:flutter_application_5/util/cardwidget1.dart';
//import 'package:flutter_application_5/util/cardwidget2.dart';
//import 'package:flutter_application_5/util/cardwidget3.dart';
//import 'package:flutter_application_5/util/emoticon_face.dart';
//import 'package:flutter_application_5/util/exercise_tile.dart';
//import 'package:flutter_application_5/util/emoticon_face.dart';
//import 'package:flutter_application_5/util/exercise_tile.dart';
//import 'package:flutter_application_5/util/emoticon_face.dart';
//import 'package:flutter_application_5/util/exercise_tile.dart';
//import 'package:login_dribble/pages/dobavituslugu.dart';
import 'package:unifamm/pages/profile-page.dart';
import 'package:unifamm/pages/sign_in.dart';
import 'package:unifamm/settings.dart';
//import 'package:login_dribble/util/asoasd.dart';
import 'package:unifamm/util/card.dart';
import 'package:unifamm/util/card1.dart';
import 'package:unifamm/util/card2.dart';
import 'package:unifamm/util/card3.dart';
import 'package:unifamm/util/card4.dart';
//import 'package:login_dribble/pages/sdcsdcds.dart';
////import 'package:login_dribble/util/cardwidget.dart';
//import 'package:login_dribble/util/cardwidget1.dart';
//import 'package:login_dribble/util/cardwidget2.dart';
///////import 'package:login_dribble/util/cardwidget3.dart';
import 'package:flutter/cupertino.dart';
import 'package:unifamm/util/list.dart';
import 'package:unifamm/util/list2.dart';
import 'package:unifamm/util/list3.dart';
////import 'package:login_dribble/util/list2.dart';
//import 'package:login_dribble/util/list3.dart';
//import 'package:login_dribble/util/listt.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

@override
Widget build(BuildContext context) {
  return Scaffold();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(color: Color.fromARGB(92, 247, 246, 246)),
          child: Row(
            children: [
              InkWell(
                onTap: () {},
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  height: 95,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        icon: Icon(
                          CupertinoIcons.house_fill,
                          color: Colors.grey,
                        )),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  height: 95,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyApp4()));
                        },
                        icon: Icon(
                          CupertinoIcons.doc_plaintext,
                          color: Colors.grey,
                        )),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  height: 100,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyApp5()));
                        },
                        icon: Icon(
                          CupertinoIcons.settings,
                          color: Colors.grey,
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          title: const Text('Главная страница'),
          actions: [
            IconButton(
              onPressed: () {
                if ((user == null)) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignInPage()),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccountScreen()),
                  );
                }
              },
              icon: Icon(
                Icons.person,
                color: (user == null) ? Colors.white : Colors.yellow,
              ),
            ),
          ],
        ),
        body: SafeArea(
            child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 14,
                ),
                Text(
                  "Встречи",
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MyWidget(),
                  Mywidget1(),
                  Mywidget2(),
                  Mywidget3(),
                  Mywidget4(),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Услуги",
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => ListForm())));
                      },
                      child: Text(
                        "Добавить свою услугу",
                        style: GoogleFonts.montserrat(
                            color: Colors.lightBlue, fontSize: 15),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => ListForm())));
                    },
                    child: Container(
                      height: 130,
                      width: 130,

                      decoration: BoxDecoration(
                          color: Color.fromARGB(194, 30, 136, 229),
                          borderRadius: BorderRadius.circular(20)),
                      // child: Image(image: NetworkImage("https://www.freeiconspng.com/uploads/tennis-icon-8.png"),),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Спорт",
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => ListForm())));
                    },
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(194, 30, 229, 146),
                          borderRadius: BorderRadius.circular(20)),
                      // child: Image(image: NetworkImage("https://www.freeiconspng.com/uploads/tennis-icon-8.png"),),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Уход за собой",
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => ListForm())));
                    },
                    child: Container(
                      height: 130,
                      width: 130,

                      decoration: BoxDecoration(
                          color: Color.fromARGB(194, 53, 229, 30),
                          borderRadius: BorderRadius.circular(20)),
                      // child: Image(image: NetworkImage("https://www.freeiconspng.com/uploads/tennis-icon-8.png"),),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Учеба",
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => ListForm())));
                    },
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(194, 215, 201, 43),
                          borderRadius: BorderRadius.circular(20)),
                      // child: Image(image: NetworkImage("https://www.freeiconspng.com/uploads/tennis-icon-8.png"),),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Кружки",
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3,
            ),
            // Container(
            //   decoration:
            //       BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
            //   child: Row(
            //     children: [
            //       InkWell(
            //         onTap: () {},
            //         child: SizedBox(
            //           width: MediaQuery.of(context).size.width / 3,
            //           height: 63,
            //           child: Padding(
            //             padding: EdgeInsets.all(8.0),
            //             child: IconButton(
            //                 onPressed: () {},
            //                 icon: Icon(
            //                   CupertinoIcons.house_fill,
            //                   color: Colors.grey,
            //                 )),
            //           ),
            //         ),
            //       ),
            //       InkWell(
            //         onTap: () {},
            //         child: SizedBox(
            //           width: MediaQuery.of(context).size.width / 3,
            //           height: 63,
            //           child: Padding(
            //             padding: EdgeInsets.all(8.0),
            //             child: IconButton(
            //                 onPressed: () {},
            //                 icon: Icon(
            //                   CupertinoIcons.doc_plaintext,
            //                   color: Colors.grey,
            //                 )),
            //           ),
            //         ),
            //       ),
            //       InkWell(
            //         onTap: () {},
            //         child: SizedBox(
            //           width: MediaQuery.of(context).size.width / 3,
            //           height: 63,
            //           child: Padding(
            //             padding: EdgeInsets.all(8.0),
            //             child: IconButton(
            //                 onPressed: () {},
            //                 icon: Icon(
            //                   CupertinoIcons.settings,
            //                   color: Colors.grey,
            //                 )),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        )));
  }
}

class ListForm extends StatefulWidget {
  const ListForm({super.key});

  @override
  State<ListForm> createState() => _ListFormState();
}

class _ListFormState extends State<ListForm> {
  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _phone = new TextEditingController();
  TextEditingController _nomer = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 65,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: _name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Введите название",
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: _email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Введите описание",
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: _phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Введите возрастную категорию",
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: _nomer,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Введите номер телефона",
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyList(
                              name: _name.text,
                              email: _email.text,
                              phone: _phone.text,
                              nomer: _nomer.text,
                            )));
                  },
                  child: Text("Добавить"))
            ],
          ),
        ),
      ),
    );
  }
}

class ListForm2 extends StatefulWidget {
  const ListForm2({super.key});

  @override
  State<ListForm> createState() => _ListFormState();
}

class _ListForm2State extends State<ListForm> {
  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _phone = new TextEditingController();
  TextEditingController _nomer = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 65,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: _name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Введите название",
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: _email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Введите описание",
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: _phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Введите возрастную категорию",
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: _nomer,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Введите номер телефона",
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyList(
                            name: _name.text,
                            email: _email.text,
                            phone: _phone.text,
                            nomer: _nomer.text)));
                  },
                  child: Text("Добавить"))
            ],
          ),
        ),
      ),
    );
  }
}

class ListForm3 extends StatefulWidget {
  const ListForm3({super.key});

  @override
  State<ListForm> createState() => _ListFormState();
}

class _ListForm3State extends State<ListForm> {
  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _phone = new TextEditingController();
  TextEditingController _nomer = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 65,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: _name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Введите название",
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: _email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Введите описание",
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: _phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Введите возрастную категорию",
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: _nomer,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Введите номер телефона",
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyList2(
                            name: _name.text,
                            email: _email.text,
                            phone: _phone.text,
                            nomer: _nomer.text)));
                  },
                  child: Text("Добавить"))
            ],
          ),
        ),
      ),
    );
  }
}

class ListForm4 extends StatefulWidget {
  const ListForm4({super.key});

  @override
  State<ListForm> createState() => _ListFormState();
}

class _ListForm4State extends State<ListForm> {
  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _phone = new TextEditingController();
  TextEditingController _nomer = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 65,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: _name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Введите название",
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: _email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Введите описание",
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: _phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Введите возрастную категорию",
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: _nomer,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Введите номер телефона",
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyList3(
                            name: _name.text,
                            email: _email.text,
                            phone: _phone.text,
                            nomer: _nomer.text)));
                  },
                  child: Text("Добавить"))
            ],
          ),
        ),
      ),
    );
  }
}
