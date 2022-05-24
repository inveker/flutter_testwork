import 'package:flutter/material.dart';
import 'package:flutter_testwork/screens/signin_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/signin',
      routes: {
        '/signin': (context) => SigninScreen(),
      },
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
    );
  }
}
