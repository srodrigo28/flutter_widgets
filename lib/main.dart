import 'package:flutter/material.dart';
main(){
  runApp(const AppWidget(
      title: 'Flutterando App'
  ));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({ Key? key, required this.title,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: const Center(
        child: Text('Flutterando'),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
