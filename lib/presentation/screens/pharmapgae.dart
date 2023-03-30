import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';

class PharmaPage extends StatelessWidget {
  const PharmaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: "");
    return Scaffold(
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Center(
            child: TextFormField(
              
            ),
          )),
    );
  }
}

class FeatureContainer extends StatelessWidget {
  final String? lottieAsset;
  final String? description;
  const FeatureContainer(
      {super.key, required this.lottieAsset, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              spreadRadius: 5,
              blurRadius: 25,
              offset: const Offset(0, 3),
            ),
          ],
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(20)),
      height: 300,
      width: 200,
      child: Column(children: [
        Lottie.asset(lottieAsset!,
            width: 200, height: 150, frameRate: FrameRate.max),
        const Divider(),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description!,
            ),
          ),
        )
      ]),
    );
  }
}
