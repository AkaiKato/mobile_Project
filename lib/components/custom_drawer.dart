import 'package:flutter/material.dart';
import 'package:mobile_project/data/secure_storage.dart';
import 'package:mobile_project/pages/avalible_rent_page.dart';
import 'package:mobile_project/pages/home_page.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int? getElmaId;
  String? getVerToken;

  @override
  void initState() {
    super.initState();
    checkElmaId();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Image.asset('lib/Images/favicon.png'),
              ),
              //АРЕНДЫ КА
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: ListTile(
                  leading: const Icon(Icons.business_center),
                  title: const Text("Аренда"),
                  onTap: () {
                    Navigator.pop(context);
                    const AsyncSnapshot.waiting();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => HomePage(
                              elmaId: getElmaId as int,
                              verToken: getVerToken as String,
                            )),
                      ),
                    );
                  },
                ),
              ),
              //АРЕНДЫ ДОСТУПНЫЕ
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: ListTile(
                  leading: const Icon(Icons.business_sharp),
                  title: const Text("Доступные аренды"),
                  onTap: () {
                    Navigator.pop(context);
                    const AsyncSnapshot.waiting();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => AvalibleRents(
                              elmaId: getElmaId as int,
                              verToken: getVerToken as String,
                            )),
                      ),
                    );
                  },
                ),
              ),
              //О НАС
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: ListTile(
                  leading: const Icon(Icons.people_outline),
                  title: const Text("О нас"),
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.pushNamed(context, '/about_us_page');
                  },
                ),
              ),
              //FAQ
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: ListTile(
                  leading: const Icon(Icons.question_answer),
                  title: const Text("FAQ"),
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.pushNamed(context, '/faq_page');
                  },
                ),
              ),
            ],
          ),
          //LOGOUT
          Padding(
            padding: const EdgeInsets.only(left: 12, bottom: 25),
            child: ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Выйти"),
              onTap: () {
                Navigator.pop(context);
                SecureStorage().deleteSecureData('1');
                SecureStorage().deleteSecureData('2');
                Navigator.pushNamed(context, '/login_page');
              },
            ),
          ),
        ],
      ),
    );
  }

  void checkElmaId() async {
    Future<dynamic> ss = SecureStorage().readSecureData('1');
    Future<dynamic> kk = SecureStorage().readSecureData('2');
    String tt = await ss;
    String verToken = await kk;
    var elmaId = int.tryParse(tt);
    if (elmaId == null) {
      getElmaId = 1;
      getVerToken = "";
    } else {
      getElmaId = elmaId;
      getVerToken = verToken;
    }
  }
}
