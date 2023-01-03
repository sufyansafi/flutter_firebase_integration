import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';

import 'google.dart';
import 'package:flutter_firebase_integration/firebase_options.dart';
// import 'google.dart';import 'package:firebase_core/firebase_core.dart';

// import 'package:firebase_dart/firebase_dart.dart';
void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  var DefaultFirebaseOptions;
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const Flutergogle(title: 'Flutter Demo Home Page'),
    );
  }
}


// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// // import 'package:firebase_core/firebase_core.dart';
// // // ignore: unused_import
// // import 'package:learnfirebase/firebase_options.dart';

// import 'screens/signupscreen.dart';

// void main() async {
//   //  WidgetsFlutterBinding.ensureInitialized();

//   // var DefaultFirebaseOptions;
//   // await Firebase.initializeApp(
//   //   options: DefaultFirebaseOptions.currentPlatform,
//   // );
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         scaffoldBackgroundColor: Colors.black,
//         primarySwatch: Colors.blue,
//       ),
//       home: const SignUpScren(),
//     );
//   }
// }
