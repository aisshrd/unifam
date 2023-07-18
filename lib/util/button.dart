import 'package:flutter/material.dart';

const List<String> list = <String>[
  'от 1 до 5 лет',
  'от 6 до 10 лет',
  'от 11 до 16 лет',
  'от 16 лет и старше'
];

void main() => runApp(const DropdownButtonExample());

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      //  icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Color.fromARGB(255, 117, 117, 117)),
      borderRadius: BorderRadius.circular(5),
      underline: Container(
        height: 2,
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
