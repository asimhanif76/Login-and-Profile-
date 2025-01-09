import 'package:get/get.dart';
import 'package:mvc_pattern_with_getx/routes/routes_name.dart';
import 'package:mvc_pattern_with_getx/view/Page_1.dart';
import 'package:mvc_pattern_with_getx/view/Page_2.dart';
import 'package:mvc_pattern_with_getx/view/home_page.dart';
import 'package:mvc_pattern_with_getx/view/profile_page.dart';

class AppRoute {
  static appRoute() => [
        GetPage(
          name: RoutesName.homePage,
          page: () => HomePage(),
        ),
        GetPage(
          name: RoutesName.profilePage,
          page: () => ProfilePage(),
        ),
        GetPage(
          name: RoutesName.page1,
          page: () => Page1(),
        ),
        GetPage(
          name: RoutesName.page2,
          page: () => Page2(),
        )
      ];
}
