import 'package:cf_pr_2/headers.dart';

class AppRoutes {
  AppRoutes._();

  static final AppRoutes instance = AppRoutes._();

  String homepage = "/";
  String studentDataPage = "student_data_page";
  String detailPage = "detail_page";

  Map<String, WidgetBuilder> routes = {
    "/": (context) => const HomePage(),
    "student_data_page": (context) => const StudentDataPage(),
    "detail_page": (context) => const DetailPage(),
  };
}
