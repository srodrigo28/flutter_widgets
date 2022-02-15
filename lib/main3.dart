import 'package:flutter/material.dart';
main(){
  runApp(const AppWidget(
      title: 'Flutterando App',
      subTitle: 'App',
  ));
}

class AppWidget extends StatelessWidget {
  final String title;
  final String subTitle;

  const AppWidget({
    Key? key,
    required this.title,
    required this.subTitle
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        textDirection: TextDirection.ltr,
        style: const TextStyle(color: Colors.red, fontSize: 40.0),
      ),
    );
  }
}
