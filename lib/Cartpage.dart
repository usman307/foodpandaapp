import 'package:flutter/material.dart';
class cartpage extends StatefulWidget {
  const cartpage({Key? key}) : super(key: key);

  @override
  State<cartpage> createState() => _cartpageState();
}

class _cartpageState extends State<cartpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Center(child: Text('data')),
            ],
          ),
        ),
      ),
    );
  }
}
