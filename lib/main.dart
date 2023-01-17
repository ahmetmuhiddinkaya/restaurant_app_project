import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/model/cartmodel.dart';
import 'package:restaurant_app/router.dart';
import 'package:restaurant_app/view_model/auth_view_model.dart';
import 'package:restaurant_app/view_model/firestore_view_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthViewModel>(
          create: (_) => AuthViewModel(),
        ),
        ChangeNotifierProvider<FirestoreViewModel>(
          create: (_) => FirestoreViewModel(),
        ),
        ChangeNotifierProvider<CardModel>(
          create: (_) => CardModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: "/",
        onGenerateRoute: RouterGenerate.generateRoute,
      ),
    );
  }
}
