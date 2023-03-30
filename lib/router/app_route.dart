import 'package:auto_route/auto_route.dart';
import 'package:wasfeti/main.dart';
import 'package:wasfeti/presentation/screens/doctorpage.dart';
import 'package:wasfeti/presentation/screens/login.dart';
import 'package:wasfeti/presentation/screens/pharmapgae.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(
    initial: true,
    page: MyHomePage,
  ),
  CustomRoute(
      page: LoginScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 500),
  MaterialRoute(
    page: DoctorPage,
  ),
  MaterialRoute(
    page: PharmaPage,
  ),
], replaceInRouteName: "Page,Route")
class $AppRouter {}
