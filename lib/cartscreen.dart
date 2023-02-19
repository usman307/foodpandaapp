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
           appBar: AppBar(
             title: Text('Your Cart Details'),
             centerTitle: true,
           ),
           body: Column(
            children: [
SizedBox(height: 15,),
FutureBuilder(
           future: Future.value(providerofcart.cartitems),
           builder: (context,snapshot){
   if(!snapshot.hasData){
     return Center(child: CircularProgressIndicator());
   }
else if(snapshot.connectionState==ConnectionState.waiting){
return Text('please wait');
   }
  else if (snapshot.hasData){
    return  Column(
      children: [
        SizedBox(
          height:300,
          child: Container(

            child: ListView.builder(
              itemCount: snapshot.data!.length,
                itemBuilder: (context,index){
               final cartitemlist = snapshot.data![index];
               print(cartitemlist);
                return Container(
                  height: 150,
                  child: Card(
                    elevation: 1,
                    child: Stack(
                      children: [
                        Positioned(
right:10,
                          bottom: 10,
                          child: Image.asset( height:150,
                              width:200,


                              cartitemlist.cartimages.toString(),fit: BoxFit.cover,) ,
                        ),
                        // Positioned(
                        //     top: 50,
                        //     child: Column(
                        //       children: [
                        //         Text(cartitemlist.cartname.toString(),style: TextStyle(fontSize: 17,),),
                        //         Text('Price '+cartitemlist.cartprice.toString())
                        //       ],
                        //     )),


                      ],
                    ),
                  ),
                );
                }),
          ),
        ),
        SizedBox(height: 50,),
        Text('cart price',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18),),
      ],
    ) ;
  }
else{
return Text('something occurs');
  }

     })
   ]
           )
   )
    )

    );

  }
}