import 'package:cobacoab/screens/authenticate/authenticate.dart';
import 'package:cobacoab/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cobacoab/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    
    //mengambalikan tampilan home atau auhenticate
    if (user == null ) {
      return Authenticate();  
    } else {
      return Home();
    }
  }
}