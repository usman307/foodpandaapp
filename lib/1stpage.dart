import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/helper.dart';
import 'package:untitled/modelclass.dart';
import 'package:untitled/resturantcomponent.dart';

class firstinterface extends StatefulWidget {
  const firstinterface({Key? key}) : super(key: key);

  @override
  State<firstinterface> createState() => _firstinterfaceState();
}

class _firstinterfaceState extends State<firstinterface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //  SizedBox(height: 10,),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CupertinoTextField(
                  placeholder: 'Enter Resturant',
                  prefix: Icon(Icons.search),
                ),
              )),
            ],
          ),
        ),
        title: Text(
          'New York City',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Icon(Icons.shopping_cart, color: Colors.pink),
        ],
      ),
      drawer: Drawer(
        child: DrawerHeader(
            child: ListView(
          children: [
            DrawerHeader(
                child: CircleAvatar(
              child: Image.asset('assets/alien.jpg'),
            )),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(30)),
                child: Image(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/sand.jpg'),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: double.infinity,
              decoration: BoxDecoration(
                  //  color: Colors.pink,
                  ),
              child: Row(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/sandwich.jpg'),
                        maxRadius: 100,
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.030,
                          //  width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.only(topLeft: Radius.circular(20)),
                            color: Colors.pinkAccent,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: Text(
                              'Flat 20%off',
                            ),
                          )),
                    ],
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/sandwich.jpg'),
                        maxRadius: 100,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: double.infinity,
              decoration: BoxDecoration(
                  //  color: Colors.pink,
                  ),
              child: Row(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/sandwich.jpg'),
                        maxRadius: 100,
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/sandwich.jpg'),
                        maxRadius: 100,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              'Top deals',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.20,
                width: double.infinity,
                decoration: BoxDecoration(

                    //   color: Colors.red,

                    ),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: helperclass.itemcount,
                    itemBuilder: (context, index) {
                      foodmodel mod = helperclass.getstatus(index);

                      return resturant(
                        productname: mod.productname.toString(),
                        image: mod.image,
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
