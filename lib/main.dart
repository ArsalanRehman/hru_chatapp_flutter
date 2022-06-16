import 'package:flutter/material.dart';
import 'package:hru_chatapp_flutter/pages/home_page.dart';
import 'package:hru_chatapp_flutter/pages/login_page.dart';
import 'package:hru_chatapp_flutter/provider/authentication_provider.dart';
import 'package:hru_chatapp_flutter/services/navigation_service.dart';
import 'package:provider/provider.dart';
import '../pages/splash_page.dart';
import '../pages/register_page.dart';

void main() {
  runApp(
    SplashPage(key: UniqueKey(), onInitializationComplete:  (){
      runApp(
        MainApp(),
      );
    },)
  );
}
class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // App icersinde herhangi bir degisiklik oldugunu zaman authenticatora bilgi verilmesi icin
    // MultiProvider icinde hem AuthenticationProvider hem child olarak MaterialApp kullanildi
    return MultiProvider(providers: [
     ChangeNotifierProvider<AuthenticationProvider>(create: (BuildContext _context){
       return AuthenticationProvider();
     })
    ],
    child: MaterialApp(
      title: 'Harran Chat',
      theme: ThemeData(
        backgroundColor: Color.fromRGBO(36, 35, 49, 1.0),
        scaffoldBackgroundColor: Color.fromRGBO(36, 35, 49, 1.0),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color.fromRGBO(30, 29, 37, 1.0),
        ),
      ),
      navigatorKey: NavigationService.navigatorKey,
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext _context) => LoginPage(),
         '/register': (BuildContext _context) => RegisterPage(),
        '/home': (BuildContext _context) => HomePage(),
      },
    ),
    );

  }
}