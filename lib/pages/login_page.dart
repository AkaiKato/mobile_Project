import 'package:flutter/material.dart';
import 'package:mobile_project/components/my_button.dart';
import 'package:mobile_project/components/my_textfield.dart';
import 'package:mobile_project/helper/helper_functions.dart';
import 'package:mobile_project/pages/FAQ_page.dart';
import 'package:mobile_project/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    if (passwordController.text != "admin" && loginController.text != "admin") {
      Navigator.pop(context);
      displayMessageToUser("Пароль или логин не верны", context);
    } else {
      try {
        //Do Request

        Navigator.pop(context);

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: ((context) => const HomePage()),
          ),
        );
      } on Exception catch (e) {
        Navigator.pop(context);
        displayMessageToUser("Something happen", context);
      }
    }
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FAQ(),
                        ),
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
}
