import 'package:flutter/material.dart';
//import 'package:flutter_application_5/pages/uznatbolshe.dart';
import 'package:unifamm/pages/uznatbolshe.dart';

class CardWidget1 extends StatelessWidget {
  const CardWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color.fromARGB(236, 255, 255, 255),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextButton(
                onPressed: () {},
                child: Text(
                  'Организация "Komek"',
                  style: TextStyle(
                    color: Color.fromARGB(255, 101, 101, 101),
                    fontStyle: FontStyle.italic,
                  ),
                )),
            Center(
              child: const Text(
                ''' Кружок шахмат''',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UznatBolshe()),
                  );
                },
                child: Text(
                  'Узнать больше',
                  style: TextStyle(color: Colors.blue),
                )),
          ],
        ),
      ),
    );
  }
}
