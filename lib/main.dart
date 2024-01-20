import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes/pages/home_page.dart';
import 'package:shoes/providers/cart_provider.dart';
import 'package:shoes/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// Types of Provider
  /*Provider - read only value
   *ChangeNotiferProvider - change the value and notify widget that are listening to it.
   *FutterProvider - it can listen to future subscribe to that and show changes,and help in lazy loading
   *StreamProvider  - it provides the stream and help in lazy loading.
   */
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Exo',
          colorScheme: ColorScheme.fromSeed(
              seedColor: Color.fromRGBO(254, 206, 1, 1),
              primary: Color.fromRGBO(254, 206, 1, 1)),
          appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(fontSize: 20, color: Colors.black),
          ),
          inputDecorationTheme: const InputDecorationTheme(
              hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              prefixIconColor: Color.fromRGBO(119, 119, 119, 1)),
          // fontFamily: GoogleFonts.exo,
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
            titleMedium: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
            bodySmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          useMaterial3: true,
        ),
        home: AnimatedSplashScreen(splash: Splash(), nextScreen: HomePage()),
        // home: ProductDetailPage(product: products[0]));
      ),
    );
  }
}
