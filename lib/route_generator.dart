import 'package:garcia/main.dart';
import 'package:garcia/second_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => PageOne(),
        );
      case "/secondPage":
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => SecondPage(
              texto: args,
            ),
          );
        } else
          return _errorPage();
        break;
      default:
        return _errorPage();
    }
  }//fin lista route<dynamic>
  static Route<dynamic> _errorPage() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text("ERROR"),
        ),
        body: Center(
          child: Text("Error page"),
        ),
      ),
    );
  }
}//fin clase 