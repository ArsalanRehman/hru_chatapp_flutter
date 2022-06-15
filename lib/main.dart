import 'package:flutter/material.dart';
import 'package:hru_chatapp_flutter/services/navigation_service.dart';
import 'package:provider/provider.dart';
import '../pages/splash_page.dart';

void main() {
  runApp(
    SplashPage(key: UniqueKey(), onInitializationComplete:  (){},)
  );
}
class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Harran Chat',
        theme: ThemeData(
          backgroundColor: Color.fromRGBO(36, 35, 49, 1.0),
          scaffoldBackgroundColor: Color.fromRGBO(36, 35, 49, 1.0),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Color.fromRGBO(30, 29, 37, 1.0),
          ),
        ),
        // navigatorKey: NavigationService.navigatorKey,
        // initialRoute: '/login',
        // routes: {
        //   '/login': (BuildContext _context) => LoginPage(),
        //   '/register': (BuildContext _context) => RegisterPage(),
        //   '/home': (BuildContext _context) => HomePage(),
        // },
      );

  }
}