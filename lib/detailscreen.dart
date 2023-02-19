import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/helper.dart';
import 'package:untitled/modelclass.dart';
import 'package:untitled/productcategory.dart';
class detail extends StatefulWidget {
  String image;
  String productname;
   detail({Key? key,required this.image,required this.productname}) : super(key: key);

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.pink,
        bottom:PreferredSize(
          preferredSize: Size.fromHeight(20),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            // color: Colors.black,

                        ),
                        child: CupertinoTextField(


                          prefix: Icon(Icons.search),

                           // borderRadius: BorderRadius.circular(20),
                          //  color: Colors.red,

                          placeholder: 'Enter Resturant',
                          placeholderStyle: TextStyle(
                            fontSize: 15,
                          //  fontWeight: FontWeight.bold
                          ),

                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ) ,
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Expanded(
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>productcategory()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height*1,
  width: double.infinity,
         //   width: 100,
                decoration: BoxDecoration(
              //   color: Colors.red
                ),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                    itemCount: helperclass.itemcount,
                    itemBuilder: (context,index){
                      foodmodel mod = helperclass.getstatus(index);

                  return Container(
                    height: 200,


                    decoration: BoxDecoration(
                 //    color: Colors.grey,

                    //  color: Colors.yellow
                    ),
                    child: ListTile(
                      title: Text(mod.productname.toString().toUpperCase(),),
                      trailing: Image(image: AssetImage(mod.image),),
                     subtitle: Text(
                       mod.productprice.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),


                    ),
                  );


                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
