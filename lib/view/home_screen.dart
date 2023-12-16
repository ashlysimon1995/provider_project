import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/controller/counter_controller.dart';
import 'package:provider_project/view/second_screen.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Provider.of<Counter_controller>(context).count.toString()),
            FloatingActionButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Second_Screen()));
                },
                child: Icon(Icons.arrow_forward))
          ],
        ),
      ),
    );
  }
}
