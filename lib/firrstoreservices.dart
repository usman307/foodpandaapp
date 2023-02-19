

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/cartscreen.dart';
import 'package:untitled/components/button.dart';
import 'package:untitled/productmodel.dart';
import 'package:untitled/provider/cartprocider.dart';
import 'package:untitled/provider/getproduct.dart';

class mainfairestore extends StatefulWidget {
  const mainfairestore({Key? key}) : super(key: key);

  @override
  State<mainfairestore> createState() => _mainfairestoreState();
}

class _mainfairestoreState extends State<mainfairestore> {

  @override

  Widget build(BuildContext context) {
    final Productprovider = Provider.of<productprovider>(context,listen: false);
    final Cartprovider = Provider.of<cartprovider>(context);
    final orientation = MediaQuery.of(context).orientation;
    Productprovider.fetchproductdata();
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
        body: Column(
children: [
  Row(
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.white70,
                contentPadding: EdgeInsets.symmetric(vertical: 15),
                hintText: 'Search',
                // border: OutlineInputBorder(
                //   borderSide: BorderSide(color: Colors.red),
                //   borderRadius: BorderRadius.circular(5),
                // )

            ),
          ),
        ),
      ),
      InkWell(
        onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>cartscreen()));
        },
        child: Container(
          child: Icon(
            Icons.shopping_cart,color: Colors.pink,size: 35,),
        ),
      ),


    ],
  ),
 // SizedBox(height: 10,),

  Expanded(
flex: 2,

      child: Container(
   child: FutureBuilder(
   future: Future.value(Productprovider.getproductlist),
   builder: (context,snapshot){
     if(!snapshot.hasData){
       return Center(child: CircularProgressIndicator());
    }
     else if(snapshot.connectionState == ConnectionState.waiting){
       return Center(child: CircularProgressIndicator());
    }
     else if(snapshot.hasData){
    //    return  GridView.builder(
    //    itemCount: snapshot.data!.length,
    // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    // mainAxisSpacing: 4,
    //
    // crossAxisCount: (orientation == Orientation.portrait) ? 1 :4),  itemBuilder: (buildcontext,int index){
    // final productdata = snapshot.data![index];
    // return Padding(
    // padding: const EdgeInsets.all(8.0),
    // child:   Card(
    // shadowColor: Colors.pink,
    //
    //
    // child: Column(
    // children: [
    // GridTile(
    //
    // child:  Image.asset(productdata.productimages.toString()),
    // ),
    // Row(
    // children: [
    // Padding(
    // padding: const EdgeInsets.symmetric(horizontal: 10),
    // child: Image.asset('assets/bicycle-rider.png',width: 32,height:30,),
    // ),
    // Image.asset('assets/rating.png',width: 62,height: 60,color: Colors.pink,),
    //
    // Transform.translate(
    // offset:Offset(130,0)  ,
    //
    // child: Container(
    // padding: EdgeInsets.only(left: 16),
    // height:40,
    // width:130,
    // child: loginbutton(name: 'Add to Cart', onTap: (){
    // Cartprovider.addtocart(productdata);
    //
    //
    // })),
    // ),
    //
    // ],
    // )
    //
    //
    // ],
    // ),
    //
    // ),
    // );
    //
    //
    //
    // }
    // );

    }
     return Text('something went wrong');

    }),


      ),
  )
]
    )




        ),
      )

    );
  }
}
