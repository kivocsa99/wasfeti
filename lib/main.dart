import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:wasfeti/firebase_options.dart';
import 'package:wasfeti/presentation/components/typography.dart';
import 'package:wasfeti/presentation/widgets/aboutus.dart';
import 'package:wasfeti/presentation/widgets/homecontainer.dart';
import 'package:wasfeti/presentation/widgets/mainappbar.dart';
import 'package:wasfeti/presentation/widgets/mainfeaturescontainer.dart';
import 'package:wasfeti/presentation/widgets/mainnavigationbar.dart';
import 'package:wasfeti/presentation/widgets/mainspecialcontainer.dart';
import 'router/app_route.gr.dart' as app_router;

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Hive.initFlutter();
  await Hive.openBox("setting");
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final _appRouter = app_router.AppRouter();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'wasfeti',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: 1920,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(480, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.resize(2000, name: DESKTOP),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

class MyHomePage extends HookWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final doctorkey = useState(GlobalKey());
    final slideController = useState(CarouselController());
    final sponsersList =
        useState(["assets/pharma.png", "assets/doc.png", "assets/drug.png"]);
    return LayoutBuilder(
      builder: (context, dimenstions) {
        return Scaffold(
          appBar: const MainAppBar(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                MainNavigationBar(
                  width: dimenstions.maxWidth,
                  doctorscroll: () {
                    Scrollable.ensureVisible(doctorkey.value.currentContext!,
                        duration: const Duration(seconds: 1));
                  },
                ),
                const HomeContainer(),
                const Padding(
                  padding: EdgeInsets.only(left: 50.0, right: 50.0),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Why wasfeti ?",
                    style: headlineTextStyle,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const MainFeatureContainer(),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 50.0, right: 50.0),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Our Sponsers",
                    style: headlineTextStyle,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 400,
                  width: dimenstions.maxWidth - 200,
                  child: CarouselSlider(
                    carouselController: slideController.value,
                    items: sponsersList.value
                        .map((news) => GestureDetector(
                              onTap: () async {},
                              child: Container(
                                width: dimenstions.maxWidth / 2 + 200,
                                margin: const EdgeInsets.all(5.0),
                                child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0)),
                                    child: Stack(
                                      children: <Widget>[
                                        Center(
                                            child: Image.asset(
                                          news,
                                          fit: BoxFit.contain,
                                        )),
                                        Positioned(
                                          bottom: 0.0,
                                          left: 0.0,
                                          right: 0.0,
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color.fromARGB(200, 0, 0, 0),
                                                  Color.fromARGB(0, 0, 0, 0)
                                                ],
                                                begin: Alignment.bottomCenter,
                                                end: Alignment.topCenter,
                                              ),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10.0,
                                                horizontal: 20.0),
                                            child: Text(
                                              "hello",
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            ))
                        .toList(),
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      aspectRatio: 2.0,
                      onPageChanged: (index, reason) {
                        // index1.value = index;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 50.0, right: 50.0),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "How can wasfeti help you ?",
                    style: headlineTextStyle,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MainSpecialContainer(
                  width: dimenstions.maxWidth,
                  key: doctorkey.value,
                ),
                const SizedBox(
                  height: 20,
                ),
                const AboutUs()
              ],
            ),
          ),
        );
      },
    );
  }
}
