import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: MyHomePage(),
   );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageSate createState() => _MyHomePageSate();
}
class _MyHomePageSate extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Stack(
             children:<Widget> [
              Container(
                height: 200.0,
                width: double.infinity ,
                color: Colors.pinkAccent
              ),
              Positioned(
                bottom:55.0 ,
                right: 100.0,
                child: Container(
                  height:350.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(320),
                    color:Colors.cyan
                  ),
                ),
              ),
               Positioned(bottom: 100.0,
               left: 130.0,
                 child: Container(
                   height: 290.0,
                   width: 300.0,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(300),
                     color: Colors.yellowAccent
                   ),
                 ),
               ),
               Positioned(
                 bottom: 100.0,
                 left: 150.0,
                 child: Container(
                   height: 330.0,
                   width: 300.0,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(300),
                       color: Colors.blue
                   ),
                 ),
               ),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   SizedBox(height: 14.0),
                   Row(
                     children:  <Widget> [
                       SizedBox(width: 14.0),
                       Container(
                         alignment: Alignment.topLeft,
                         height: 42.0,
                         width: 42.0,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(25),
                               border: Border.all(
                                 color: Colors.white,
                                 style:BorderStyle.solid,
                                 width: 2.0
                               ),
                           image:  DecorationImage(
                             image: AssetImage('images/img.jpg'),
                           )
                         ),
                       ),
                       SizedBox(
                         width: MediaQuery.of(context).size.width-120),
                       Container(
                         alignment: Alignment.topRight,
                         child: IconButton(
                           icon: Icon(Icons.menu),
                           onPressed: () {  },
                           color: Colors.white,
                           iconSize: 28.0,
                         ),
                       ),
                       SizedBox(height:15.0),
                     ],
                   ),
                   SizedBox(height: 45.0),
                   Padding(
                     padding: EdgeInsets.only(left:15.0 ),
                     child: Text(
                       'Hi Welcome',
                       style: TextStyle(
                         fontSize: 25.0,
                         fontWeight: FontWeight.normal
                       ),
                     ),
                   ),
                   SizedBox(height: 25.0),
                   Padding(padding: EdgeInsets.only(left: 15.0,right: 15.0),
                     child: Material(
                       elevation: 5.0,
                       borderRadius: BorderRadius.circular(25),
                       child:TextFormField(
                         decoration: InputDecoration(
                           border: InputBorder.none,
                           prefixIcon: Icon(
                             Icons.search,
                             color: Colors.amber,
                             size: 30.0,
                           ),
                           contentPadding:
                             EdgeInsets.only(left: 20,top:15 , bottom: 10),
                             hintText: 'Search',
                             hintStyle: TextStyle(
                                 color: Colors.pink
                             ),
                         ),
                       ) ,
                     ),
                   ),
                   SizedBox(height: 10.0),
                 ],
               ),
            ],
            ),
            SizedBox(height: 10.0),
            Stack(
              children:<Widget>[
                SizedBox(height: 10.0),
                Material(
                  elevation: 1.0,
                  child: Container(height: 70.0,color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 75.0,
                      width: MediaQuery.of(context).size.width / 4,
                      child: Column(
                        children: <Widget>[
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                   image: AssetImage(
                                       'images/img2.jpg'
                                   ),
                                ),
                              ),
                              ),
                          Text(
                            'Shirts',
                            style: TextStyle(fontFamily: 'Quicksand'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 75.0,
                      width: MediaQuery.of(context).size.width/ 4,
                      child: Column(
                        children:<Widget> [
                          Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                              image:DecorationImage(
                                image:AssetImage('images/img3.jpg')
                              )
                            ),
                          ),
                          Text(
                            'Half coat',
                            style: TextStyle(
                              fontFamily: 'Quicksand'
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        specialItemCard('Mug', 'images/img3.jpg', false)
      ],
      ),
    );
  }
}

 specialItemCard(String title, String imagePath ,bool isLoved){
  return Padding(
      padding: EdgeInsets.only(left:15.0 , right:15.0,top:15.00),
      child: Container(
        height: 140.0,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Container(
              width: 140.0,
                height: 150.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit:BoxFit.cover
                  ),
                ),
            ),
            SizedBox(width: 4.0,),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(width: 45.0),
                    Material(
                      elevation: isLoved ? 0.0 : 2.0,
                      borderRadius: BorderRadius.circular(20.0),
                      child:Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          color:isLoved ?  Colors.grey.withOpacity(0.3):Colors.white
                        ),
                        child:Center(
                          child: isLoved ? Icon(Icons.favorite_border):Icon(Icons.favorite,color: Colors.red),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.0),
                Container(
                  width: 170.0,
                  child: Text(
                    'This is a special deal',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 13.0
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                Row(
                  children: <Widget>[
                    SizedBox(width: 35.0),
                    Container(
                      height: 44.0,
                      width: 50.0,
                      color: Colors.black,
                      child: Center(
                        child:Text(
                          '\$300',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                        ),
                      ),
                    ),
                    Container(
                      height: 44.0,
                      width:100.0,
                      color: Colors.black,
                          child: Center(
                            child: Text(
                              'Add to Cart',
                                  style:TextStyle(
                                    color:Colors.amber,
                                    fontWeight: FontWeight.bold
                                  )
                            ),
                          ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
  );
}
