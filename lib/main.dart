import 'package:cobacoab/screens/wrapper.dart';
import 'package:cobacoab/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cobacoab/models/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(title: 'Flutter Demo', home: Wrapper()),
    );
  }
}
