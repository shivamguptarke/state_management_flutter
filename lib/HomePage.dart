import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_flutter/providers/counter_provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    int _counter = Provider.of<Counter>(context).count;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: Provider.of<Counter>(context,listen: false).decrement,
              tooltip: 'Increment',
              child: const Icon(CupertinoIcons.minus),
            ),
            SizedBox(width: 20,),
            FloatingActionButton(
              onPressed: Provider.of<Counter>(context,listen: false).reset,
              tooltip: 'Reset',
              child: Text("RESET"),
            ),
            SizedBox(width: 20,),
            FloatingActionButton(
              onPressed: Provider.of<Counter>(context,listen: false).increment,
              tooltip: 'Increment',
              child: const Icon(CupertinoIcons.add),
            ),
          ],
        ),
      ),
    );
  }
}
