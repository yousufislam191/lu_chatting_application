import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lu_ahatting_application/developers.dart';
import 'package:lu_ahatting_application/Utils/user_simple_preference.dart';
import 'package:lu_ahatting_application/head/headHomePage.dart';
import 'package:lu_ahatting_application/loader.dart';
import 'package:lu_ahatting_application/openPage.dart';
import 'package:lu_ahatting_application/login_registration_verification/registration.dart';
import 'package:lu_ahatting_application/services/auth.dart';
import 'package:lu_ahatting_application/student/studentHomePage.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await UserSimplePreferences.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Lu Chatting Application',
//       initialRoute: "/",
//       routes: {
//         "/": (context) => openPage(),
//         // "/": (context) => developer(),
//       },
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthService>(
          create: (context) => AuthService(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Lu Chatting Application',
        initialRoute: "/",
        routes: {
          "/": (context) => openPage(),
          // "/": (context) => registration(),
        },
      ),
    );
  }
}
