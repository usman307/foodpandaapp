import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/provider/splashscreenprovider.dart';


class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {



@override
  void initState() {
    // TODO: implement initState
    super.initState();
    final splash = Provider.of<splashprovider>(context,listen: false);

splash.islogin(context);
}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SafeArea(
        child: Scaffold(

          backgroundColor: Colors.pink,
          body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 150),
                    child: Container(
                        height:100,
                        width: MediaQuery.of(context).size.width*0.25,
                        decoration: BoxDecoration(


                        ),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/panda.png'),
                          maxRadius: 20,

                        )),
                  ),
                ],




          ),
        ),
      ),
    );

  }
}
