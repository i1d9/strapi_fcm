part of 'package:frontend/helpers/import.dart';

class Routes{

  static final routes = [

    GetPage(
      name: '/login',
      page: () => LoginPage(),
      binding: DataBinding(),
    ),
    GetPage(
      name: '/register',
      page: () => RegisterPage(),
      binding: DataBinding(),
    ),

    GetPage(
      name: '/',
      page: () => QuotesHome(),
      binding: DataBinding(),
    ),

    GetPage(
      name: '/new',
      page: () => QuotesForm(),
      binding: DataBinding(),
    ),


  ];
}