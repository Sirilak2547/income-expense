import 'package:flutter/material.dart';

class ShowPrice extends StatefulWidget {

  final String value;
  final String kg;
  final String price;

  ShowPrice({Key key, this.value, this.kg, this.price}) : super (key: key);

  @override
  _ShowPriceState createState() => _ShowPriceState();
}


class _ShowPriceState extends State<ShowPrice> {
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      // resizeToAvoidBottomPadding: false,
     appBar: AppBar(
       title: Text("แสดงราคาข้าว"),
       backgroundColor: Colors.green[800],
     ),
     body: Stack(
       fit: StackFit.expand,
       children: <Widget>[
         Container(
           color: Colors.grey[50],
         ),
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[

                CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/price.png'),
              ),

              SizedBox(
                height: 40,
              ),

               Text('ข้อมูลของข้าวหลังคำนวณ',
               style: TextStyle(fontSize: 25.0),),
               SizedBox(
                 height: 20,
               ),

            Card(
                child: Column(
                children: <Widget>[
                 

                  ListTile(
                    title: Text('ราคาข้าวต่อกิโลกรัม' ,
                    style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20.0)),
                    subtitle: Text('${widget.price}'+' บาท',
                    style: TextStyle(fontSize: 18.0),),
                    leading: Icon(
                      Icons.attach_money,
                      color: Colors.black54
                    ),
                    
                  ),
                  Divider(
                    
                  ),
                  ListTile(
                    title: Text('น้ำหนักข้าวหลังหักค่าความชื้น',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
                    subtitle: Text('${widget.kg}'+' กิโลกรัม',
                    style: TextStyle(fontSize: 18.0),),
                    leading: Icon(
                      Icons.money_off,
                      color: Colors.black54,
                    ),
                    
                  ),
                  Divider(
                    
                  ),
                  ListTile(
                    title: Text('ราคาข้าวทั้งหมด',
                    style: TextStyle(fontWeight: FontWeight.w500,
                    fontSize: 20.0)),
                    subtitle: Text('${widget.value}'+' บาท',
                    style: TextStyle(fontSize: 18.0),),
                    leading: Icon(
                      Icons.attach_money,
                      color: Colors.black54,
                    ),
                    
                  ),
                  
                  
                ],
              )
            ),  

              
             ],
           ),
         )
       ],
     ),
    );
  }
}

