import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/counter.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Counter>(
      builder: (context, ref, child) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'C O U N T E R',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: ref.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(ref.num[index].toString()),
          ),
        ),
        extendBody: true,
        floatingActionButton: FloatingActionButton(
          onPressed: ref.incrementCount,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
