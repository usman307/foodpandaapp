import 'package:flutter/material.dart';
import 'package:untitled/helper.dart';
import 'package:untitled/modelclass.dart';
import 'package:untitled/forminformation.dart';
class productcategory extends StatefulWidget {
  const productcategory({Key? key}) : super(key: key);

  @override
  State<productcategory> createState() => _productcategoryState();
}

class _productcategoryState extends State<productcategory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //     backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 1),
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  //  color: Colors.red,

                  image: DecorationImage(image: AssetImage('assets/sandwich.jpg'),fit: BoxFit.contain),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text('Sandwitches',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>forminfo()));
                  },
                    child: Container(
               //     color: Colors.red,
                      height: MediaQuery.of(context).size.height*0.40,
           width: double.infinity,
                        child: ListView.builder(
                            itemCount: helperclass.itemcount,
                            itemBuilder: (context,index){
                          foodmodel mod = helperclass.getstatus(index);
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              //  leading: Image(image: AssetImage(mod.image)),
                                title: Text(mod.productname.toString().toUpperCase(),),
                              trailing: Image(image: AssetImage(mod.image)),
                            ),
                          );
                        })

                    ),
                  ),
                ],
              ),
            )


          ],

        ),
      ),
    );

  }
}
