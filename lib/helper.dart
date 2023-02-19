import 'package:untitled/modelclass.dart';


class helperclass{

   static var  lis=[
    foodmodel(image: 'assets/sand.jpg', productname: 'sandwitch', productprice: '200rupees', productquantity: 32),
    foodmodel(image: 'assets/bug.jpg', productname: 'sandwitch', productprice: '200rupees', productquantity: 32),
    foodmodel(image: 'assets/burger.jpg', productname: 'burger', productprice: '200rupees', productquantity: 10),
    foodmodel(image: 'assets/sandwich.jpg', productname: 'sandwitch', productprice: '400 rupees', productquantity: 20),
    foodmodel(image: 'assets/burger.jpg', productname: 'burger', productprice: '200rupees', productquantity: 10),
    foodmodel(image: 'assets/sandwich.jpg', productname: 'sandwitch', productprice: '400 rupees', productquantity: 20)
  ];
static foodmodel getstatus(int position){
return  lis[position];
}
static var itemcount = lis.length;

}