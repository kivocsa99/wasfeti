import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wasfeti/presentation/components/components.dart';

class HomeContainer extends HookWidget {
  const HomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimenstions) {
        return dimenstions.maxWidth > 900
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Let's write\nsome prescriptions",
                            style: headlineTextStyle,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            """wasfeti is a clinic consird with Mental Health.
                                  \nSeeking to achieve the best """,
                            style: subtitleTextStyle,
                          )
                        ],
                      ),
                    ),
                    Flexible(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Wrap(
                          children: const [
                            ImageWrapper(
                                height: 3,
                                widthdivide: 3,
                                image: "assets/drug.json"),
                            ImageWrapper(
                                height: 3,
                                widthdivide: 3,
                                image: "assets/shield.json"),
                            ImageWrapper(
                                height: 3,
                                widthdivide: 3,
                                image: "assets/therapy.json"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : SizedBox(
                height: 500,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Let's Start Our Mental Journey",
                      style: headlineTextStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 80.0),
                      child: Text(
                        """wasfeti is a clinic consird with Mental Health.
                            \nSeeking to achieve the best """,
                        style: subtitleTextStyle,
                      ),
                    ),
                    Flexible(
                      child: Container(
                        alignment: Alignment.center,
                        child: Wrap(
                          children: const [
                            ImageWrapper(
                                height: 3,
                                widthdivide: 2.5,
                                image: "assets/drug.json"),
                            ImageWrapper(
                                height: 3,
                                widthdivide: 2.5,
                                image: "assets/therapy.json"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
      },
    );
  }
}
