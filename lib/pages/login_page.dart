import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mobile_project/components/models/user_model.dart';
import 'package:mobile_project/components/my_button.dart';
import 'package:mobile_project/components/my_textfield.dart';
import 'package:mobile_project/data/secure_storage.dart';
import 'package:mobile_project/helper/helper_functions.dart';
import 'package:http/http.dart' as http;
import 'package:mobile_project/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  User? logUser;

  void login() async {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    if (context.mounted) Navigator.pop(context);
    var tt = await fetchUser();
    final json = jsonDecode(tt);
    final results = json as dynamic;
    logUser = User.fromJson(results);
    if (logUser != null) {
      SecureStorage().writeSecureData('1', logUser!.idElma.toString());

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: ((context) => HomePage(elmaId: logUser!.idElma)),
        ),
      );
    } else {
      displayMessageToUser("Something happen", context);
    }

    /* Exception catch (e) {
      Navigator.pop(context);
      */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              // ignore: avoid_unnecessary_containers
              Container(
                child: Image.asset('lib/Images/favicon.png'),
              ),

              const SizedBox(
                height: 20,
              ),

              //Greetings
              const Text(
                'Приветствуем в нашем приложении!',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              //login textfield
              MyTextField(
                hintText: "Логин",
                obscureText: false,
                controller: loginController,
              ),

              const SizedBox(
                height: 10,
              ),

              //pass textfield
              MyTextField(
                hintText: "Пароль",
                obscureText: true,
                controller: passwordController,
              ),

              const SizedBox(
                height: 10,
              ),

              //Text Most Common QS
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/faq_page',
                      );
                    },
                    child: const Text(
                      "Часто задаваемые вопросы",
                      style: TextStyle(
                        color: Color.fromARGB(255, 13, 20, 207),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),

              //Enter
              MyButton(
                text: "Вход",
                onTap: login,
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<String> fetchUser() async {
    String url =
        'https://192.168.2.159:44318/Login?Email=${loginController.text}&Password=${passwordController.text}';
    final uri = Uri.parse(url);
    final responce = await http.get(uri);
    if (responce.statusCode == 500) {
      return "Пароль или Логин не верен";
    }
    return responce.body;
  }
}
