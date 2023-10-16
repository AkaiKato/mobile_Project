import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;

  const CustomAppBar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(text),
      backgroundColor: const Color.fromARGB(255, 13, 20, 207),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
