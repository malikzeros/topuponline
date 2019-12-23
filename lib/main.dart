import 'package:flutter/material.dart';
import 'splashscreen.dart';
import 'kuotahero.dart';
// var routes = <String, WidgetBuilder>{
//   "/splashscreen": (BuildContext context) => SplashScreen(),
//   "/kuotahero": (BuildContext context) => KuotaHero(),
// };
// void main() => runApp(MyApp());
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Kuota Hero',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.teal
//       ),
//       home: SplashScreen(),
//     );
//   }
// }
void main() {
  runApp(MaterialApp(
    home: SplashScreen(), // becomes the route named '/'
    routes: <String, WidgetBuilder> {
      '/home': (BuildContext context) => KuotaHero(),
    },
  ));
}