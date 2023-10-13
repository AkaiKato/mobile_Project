import 'package:flutter/material.dart';
import 'package:mobile_project/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

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
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Часто задаваемые вопросы",
                    style: TextStyle(
                      color: Color.fromARGB(255, 13, 20, 207),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
