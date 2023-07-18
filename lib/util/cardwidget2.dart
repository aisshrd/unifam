import 'package:flutter/material.dart';

import '../pages/uznatbolshe.dart';

class CardWidget2 extends StatelessWidget {
  const CardWidget2({super.key});

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
                  'Ресторан "Little Brazil"',
                  style: TextStyle(
                    color: Color.fromARGB(255, 101, 101, 101),
                    fontStyle: FontStyle.italic,
                  ),
                )),
            Center(
              child: const Text(
                ''' Раздача еды ''',
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
