import 'package:flutter/material.dart';
import 'package:listincrement/controllers/provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: Provider.of<IncrementTheList>(context).count.length,
              itemBuilder: (context, index) {
                return Text(Provider.of<IncrementTheList>(context)
                    .count[index]
                    .toString());
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Provider.of<IncrementTheList>(context, listen: false)
                    .increment();
              },
              child: Icon(Icons.add)),
          ElevatedButton(
              onPressed: () {
                Provider.of<IncrementTheList>(context, listen: false)
                    .decrement();
              },
              child: Icon(Icons.text_decrease_sharp))
        ],
      )),
    );
  }
}
