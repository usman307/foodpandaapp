import 'package:flutter/material.dart';
import 'package:untitled/detailscreen.dart';
class resturant extends StatefulWidget {
  String? productname;
  String? productprice;
  int? productquantity;
 final String image;
   resturant({Key? key,required this.image, this.productname, this.productprice, this.productquantity}) : super(key: key);

  @override
  State<resturant> createState() => _resturantState();
}

class _resturantState extends State<resturant> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>detail(image: widget.image, productname:widget.productname.toString())));
        },
          child: Container(
           height: MediaQuery.of(context).size.height*0.15,
            width: MediaQuery.of(context).size.width*0.50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(image: AssetImage(widget.image))
            ),

          ),
        )

      ],
    );
  }
}
