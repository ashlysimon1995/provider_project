import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/controller/counter_controller.dart';
import 'package:provider_project/view/home_screen.dart';

class Second_Screen extends StatelessWidget {
  const Second_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Provider.of<Counter_controller>(context, listen: false)
                            .add();
                      },
                      child: Text("+")),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Provider.of<Counter_controller>(context, listen: false)
                            .sub();
                      },
                      child: Text("-")),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Home_Screen()));
                },
                child: Icon(Icons.arrow_back),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
