import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

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
              //СДЕЛКИ
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: ListTile(
                  leading: const Icon(Icons.business_center),
                  title: const Text("Аренда"),
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.pushNamed(context, '/home_page');
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
              },
            ),
          ),
        ],
      ),
    );
  }
}
