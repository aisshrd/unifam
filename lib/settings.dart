import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unifamm/pages/home_page.dart';
import 'package:unifamm/pages/sign_in.dart';

import 'main2.dart';

void main() {
  runApp(MyApp5());
}

class MyApp5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SettingPageUI(),
    );
  }
}

class SettingPageUI extends StatefulWidget {
  @override
  State<SettingPageUI> createState() => _SettingPageUIState();
}

class _SettingPageUIState extends State<SettingPageUI> {
  bool valNotify1 = true;
  bool valNotify2 = false;
  bool valNotify3 = false;

  onChangeFuction1(bool newValue1) {
    setState(() {
      valNotify1 = newValue1;
    });
  }

  onChangeFuction2(bool newValue2) {
    setState(() {
      valNotify2 = newValue2;
    });
  }

  onChangeFuction3(bool newValue3) {
    setState(() {
      valNotify3 = newValue3;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp4()));
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp5()));
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
      appBar: AppBar(
        title: const Text(
          'Настройки',
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              children: const [
                Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                SizedBox(width: 10),
                Text(
                  'Аккаунт',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Divider(
              height: 20,
              thickness: 1,
            ),
            const SizedBox(height: 10),
            buildAccountOption(context, 'Пароль'),
            buildAccountOption(context, 'Настройки контента'),
            buildAccountOption(context, 'Доступ'),
            buildAccountOption(context, 'Язык'),
            buildAccountOption(context, 'Конфидециальность'),
            const SizedBox(height: 40),
            Row(
              children: const [
                Icon(Icons.volume_up_outlined, color: Colors.blue),
                SizedBox(width: 10),
                Text('Уведомления',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
              ],
            ),
            const Divider(
              height: 20,
              thickness: 1,
            ),
            const SizedBox(height: 10),
            buildNotificationOption(
                'Темная тема', valNotify1, onChangeFuction1),
            buildNotificationOption(
                'Учетная запись активна', valNotify2, onChangeFuction2),
            buildNotificationOption(
                'Уведомления', valNotify3, onChangeFuction3),
            const SizedBox(height: 50),
            // Center(
            //   child: OutlinedButton(
            //     style: OutlinedButton.styleFrom(
            //         padding: const EdgeInsets.symmetric(horizontal: 40),
            //         shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(20))),
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => SignInPage()),
            //       );
            //     },
            //     child: const Text('ВЫХОД',
            //         style: TextStyle(
            //             fontSize: 16, letterSpacing: 2.2, color: Colors.black)),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Padding buildNotificationOption(
      String title, bool value, Function onChangeMethod) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600])),
          Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              activeColor: Colors.blue,
              trackColor: Colors.grey,
              value: value,
              onChanged: (bool newValue) {
                onChangeMethod(newValue);
              },
            ),
          )
        ],
      ),
    );
  }

  GestureDetector buildAccountOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text('Строка 1'),
                    Text('Строка 2'),
                  ],
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Закрыть'))
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600])),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
