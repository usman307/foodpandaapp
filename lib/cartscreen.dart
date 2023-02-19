import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/provider/cartprocider.dart';
import 'package:untitled/provider/cartscreenprovider.dart';

class cartscreen extends StatefulWidget {
  const cartscreen({Key? key}) : super(key: key);

  @override
  State<cartscreen> createState() => _cartscreenState();
}

class _cartscreenState extends State<cartscreen> {
@override
  void initState() {
  final providerofcart = Provider.of<cartprovider>(context,listen: false).getcartitems();
    super.initState();
  }
  @override

   Widget build(BuildContext context) {
   final providerofcart = Provider.of<cartprovider>(context);
   return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: SafeArea(
         child: Scaffold(
           body: Column(
            children: [

Expanded(
  child:   Container(
    child:   FutureBuilder(
               future: Future.value(providerofcart.cartitems),
               builder: (context,snapshot){
       if(!snapshot.hasData){
         return Center(child: CircularProgressIndicator());
       }
else if(snapshot.connectionState==ConnectionState.waiting){
  return Text('please wait');
       }
      else if (snapshot.hasData){
        return  ListView.builder(

             itemCount: snapshot.data!.length,

            itemBuilder: (context,index){

          final caritems =snapshot.data![index];

          return ListTile(

            title: Text(caritems.cartprice.toString()),

          );

        });


      }
else{
  return Text('something occurs');
      }

         })





  ),
)

//
//
//         //           child: FutureBuilder(
//         //           future:_getCartLength() ,
//         //   builder: (BuildContext context, AsyncSnapshot snapshot) {
//         //     if (snapshot.hasData) {
//         //
//         //           return ListView.builder(itemBuilder: (context,index){
//         //           //  final pro = providerofcart.storeitemincart[index];
//         //             return ListTile(
//         //               title: Text(''),
//         //             );
//         //
//         //
//         //           });
//         //     } else if (snapshot.hasError) {
//         //           // Future encountered an error, so display error message
//         //           return Text('Error: ${snapshot.error}');
//         //     } else {
//         //           // Future is still resolving (loading), so display progress indicator
//         //           return CircularProgressIndicator();

//         }
   ]
           )
   )
    )

    );

  }
}