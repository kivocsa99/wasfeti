import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wasfeti/presentation/components/typography.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class AboutUs extends HookWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimensions) {
        return SizedBox(
          height: dimensions.maxWidth > 900 ? 400 : 800,
          width: dimensions.maxWidth,
          child: dimensions.maxWidth > 900
              ? Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: dimensions.maxWidth / 2,
                    child: Row(
                      children: [
                        Flexible(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: SizedBox(
                              width: 800,
                              height: 300,
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Image.asset(
                                    "assets/alaa.jpeg",
                                    width: 800,
                                    height: 300,
                                    fit: BoxFit.fitWidth,
                                  ),
                                  Positioned(
                                      bottom: -5,
                                      right: -5,
                                      left: 50,
                                      child: Container(
                                        color: Colors.lightBlue,
                                        height: 5,
                                      )),
                                  Positioned(
                                      top: -5,
                                      left: -5,
                                      right: 50,
                                      child: Container(
                                        color: Colors.lightBlue,
                                        height: 5,
                                      )),
                                  Positioned(
                                      top: 50,
                                      right: -5,
                                      bottom: 0,
                                      child: Container(
                                        color: Colors.lightBlue,
                                        width: 5,
                                      )),
                                  Positioned(
                                      top: 0,
                                      left: -5,
                                      bottom: 50,
                                      child: Container(
                                        color: Colors.lightBlue,
                                        width: 5,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Flexible(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 50,
                                ),
                                Text(
                                  "About Our Clinic",
                                  style: headlineTextStyle,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.\nLorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                  style: subtitleTextStyle,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.black12),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        FontAwesomeIcons.check,
                                        size: 10,
                                        color: Colors.green,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Browse Our Website",
                                      style: subtitleTextStyle,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.black12),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        FontAwesomeIcons.check,
                                        size: 10,
                                        color: Colors.green,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Choose Service",
                                      style: subtitleTextStyle,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.black12),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        FontAwesomeIcons.check,
                                        size: 10,
                                        color: Colors.green,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Send Message",
                                      style: subtitleTextStyle,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: dimensions.maxWidth / 2,
                    child: Column(
                      children: [
                        Flexible(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: SizedBox(
                              width: 800,
                              height: 300,
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Image.asset(
                                    "assets/alaa.jpeg",
                                    width: 800,
                                    height: 300,
                                    fit: BoxFit.fitWidth,
                                  ),
                                  Positioned(
                                      bottom: -5,
                                      right: -5,
                                      left: 50,
                                      child: Container(
                                        color: Colors.lightBlue,
                                        height: 5,
                                      )),
                                  Positioned(
                                      top: -5,
                                      left: -5,
                                      right: 50,
                                      child: Container(
                                        color: Colors.lightBlue,
                                        height: 5,
                                      )),
                                  Positioned(
                                      top: 50,
                                      right: -5,
                                      bottom: 0,
                                      child: Container(
                                        color: Colors.lightBlue,
                                        width: 5,
                                      )),
                                  Positioned(
                                      top: 0,
                                      left: -5,
                                      bottom: 50,
                                      child: Container(
                                        color: Colors.lightBlue,
                                        width: 5,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Row(
                              children: const [],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
        );
      },
    );
  }
}
