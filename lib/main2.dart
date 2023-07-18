import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_application_1/accordions.dart';
import 'package:unifamm/accordions.dart';
import 'package:unifamm/home.dart';
import 'package:unifamm/pages/home_page.dart';
import 'package:unifamm/settings.dart';

void main() {
  runApp(const MyApp4());
}

class MyApp4 extends StatefulWidget {
  const MyApp4({super.key});

  @override
  State<MyApp4> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp4> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
          backgroundColor: Colors.white,
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Нотариус',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'Есть вопросы? Мы здесь чтобы помочь.',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  const SizedBox(height: 27),
                  Container(
                    height: 80,
                    width: 320,
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        fillColor: Colors.white,
                        // Add a clear button to the search bar
                        suffixIcon: IconButton(
                          icon: Icon(Icons.clear),
                          onPressed: () => _searchController.clear(),
                        ),
                        prefixIcon: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {
                            // Perform the search here
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: const [
                        Accordion(
                            title:
                                'Одинокие матери могут подавать заявление на получение адресной социальной помощи',
                            content:
                                '  Получение АСП возможно, если среднедушевой доход семьи в месяц ниже черты бедности (70% от прожиточного минимума, который в 2023 году равен 40 567 тенге)'),
                        Divider(
                          height: 25,
                          thickness: 1,
                        ),
                        Accordion(
                            title: 'Мать-одиночка пособие в Казахстане 2022:',
                            content:
                                '''Неработавшим в 2022 году госбюджет выделяет фиксированные пособия: По уходу за первым ребенком — 5,76 МРП (17 643 тенге).
За вторым — 6,81 МРП (20 859).
За третьим — 7,85 МРП (24 044).
За четвертым и последующими — 8,9 МРП (27 261).'''),
                        Divider(
                          height: 25,
                          thickness: 1,
                        ),
                        Accordion(
                            title: 'заработок одиноких родитилей в месяц: ',
                            content:
                                '  На 1-го ребенка — 5,76 МРП (19 872 тенге). На 2-го — 6, 81 МРП (23 495). На 3-го — 7,85 МРП (27 083). На 4-го и следующих — 8,9 МРП (30 705).'),
                        Divider(
                          height: 25,
                          thickness: 1,
                        ),
                        Accordion(
                            title: 'Какие права у отца одиночки?',
                            content:
                                'На федеральном уровне отцам-одиночкам положены трудовые и социальные льготы, выплаты как родителю ребенка. Региональные льготы могут включать скидки на оплату детсада и внеочередной прием ребенка, бесплатное питание на детей, субсидии на коммунальные услуги.'),
                        Divider(
                          height: 25,
                          thickness: 1,
                        ),
                        Accordion(
                            title: 'Что подтверждает статус отца одиночки?',
                            content:
                                'Чтобы подтвердить статус одинокой матери (отца), нужно иметь документы о том, что вы являетесь родителем ребенка/детей, а также, что действительно воспитывает ребенка/детей самостоятельно.'),
                        Divider(
                          height: 25,
                          thickness: 1,
                        ),
                        Accordion(
                            title: 'Пособие по уходу за ребенком',
                            content:
                                'Одинокие мамы наравне с другими получили право на пособия по уходу за ребенком до 1,5 лет, что закреплено в Законе РК (ст. 8). Как информирует Еgov.kz, для не работавших до родов женщин эти пособия в 2023 году составят: На 1-го ребенка — 5,76 МРП (19 872 тенге).'),
                        Divider(
                          height: 25,
                          thickness: 1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ))),
    );
  }
}
