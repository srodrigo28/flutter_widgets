import 'package:flutter/material.dart';

class ContadorApp extends StatefulWidget {
  const ContadorApp({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ContadorApp> createState() => _ContadorAppState();
}
class _ContadorAppState extends State<ContadorApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    if( _counter <= 0){
      return;
    }else{
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Precione o bottão para iniciar a contagem:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
                onPressed: () => _incrementCounter(),
                child: const Text('Adicionar')
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () => _decrementCounter(),
                child: const Text('Remover')
            ),
          ],

        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Adicionar',
      //   child: const Icon(Icons.add),
      // ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
