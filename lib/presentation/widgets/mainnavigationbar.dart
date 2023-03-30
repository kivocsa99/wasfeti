import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wasfeti/presentation/components/components.dart';
import 'package:wasfeti/router/app_route.gr.dart';

class MainNavigationBar extends HookWidget {
  final double? width;
  final VoidCallback? doctorscroll;

  const MainNavigationBar(
      {super.key, required this.width, required this.doctorscroll});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8.0),
      color: Colors.grey.withOpacity(0.1),
      width: width,
      height: width! > 900 ? 60 : 80,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/logo.png",
                  width: 40,
                  height: 40,
                ),
                const VerticalDivider(
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black,
                ),
                Text("Wasfeh", style: headlineSecondaryTextStyle),
              ],
            ),
            Flexible(
              child: Container(
                alignment: Alignment.centerRight,
                child: Wrap(
                  children: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.popUntil(context,
                          ModalRoute.withName(Navigator.defaultRouteName)),
                      style: menuButtonStyle,
                      child: const Text(
                        "HOME",
                      ),
                    ),
                    TextButton(
                      onPressed: doctorscroll,
                      style: menuButtonStyle,
                      child: const Text(
                        "About Us",
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: menuButtonStyle,
                      child: const Text(
                        "Services",
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: menuButtonStyle,
                      child: const Text(
                        "Contact Us",
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        context.router.push(LoginScreen());
                      },
                      style: menuButtonStyle,
                      child: const Text(
                        "Login",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
