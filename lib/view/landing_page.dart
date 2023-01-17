import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/view/login.dart';
import 'package:restaurant_app/view/navbar.dart';
import 'package:restaurant_app/view_model/auth_view_model.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     var loginprovider =Provider.of<AuthViewModel>(context);
    return loginprovider.user!=null ? NavBar() : Login();
 
  }
}