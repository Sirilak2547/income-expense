import 'package:flutter/material.dart';
import 'package:phixlab_money/screens/calculate.dart';

class Calculate extends StatefulWidget {
  @override
  _CalculateState createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {

  // double _kgtoprice = 0;
  // double _kgtomoisture = 0;
  // double _sumprice = 0;
  // String _resultkg = "";
  // String _resultmoisture = "";
  // String _result = "";
  int _incomeprice = 0;
  int _outcomeprice = 0;
  int _sumprice = 0;
  
 

 TextEditingController _kgFieldController = new TextEditingController();
 TextEditingController _priceFieldController = new TextEditingController();
 TextEditingController _moistureFieldController = new TextEditingController();

  void _calculatesum() {

    int kg = int.parse(_kgFieldController.text);
    int price = int.parse(_priceFieldController.text);
    int moisture = int.parse(_moistureFieldController.text);

    setState(() {
      _sumprice = _incomeprice - _outcomeprice;
      print(_sumprice);
      // _kgtoprice = price/120 ;
      // _kgtomoisture = (kg*(100-moisture)/(100-14)) ;
      // _sumprice = (_kgtoprice*_kgtomoisture);
      // _resultkg = _kgtoprice.toStringAsFixed(2);
      // _resultmoisture = _kgtomoisture.toStringAsFixed(2);
      // _result = _sumprice.toStringAsFixed(2);
    });
  }

  onUpdate() {showDialog(
                context: context, 
                builder: (_) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      ),
                      title: Text("ยอดเงินคงเหลือ:"),
                      content: Text("700 บาท"),                      
                      actions: [
                        TextButton(onPressed: () {
                          Navigator.pop(context);
                        }, child: Text("ตกลง")),
                        
                      ],
                  );
                }
                );
    setState(() {
     _sumprice = _incomeprice-_outcomeprice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("คำนวณรายรับรายจ่าย"),
        backgroundColor: Color.fromARGB(255, 186, 99, 239),
      ),
      body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          color: Colors.lightBlue[300],

        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
                      child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/images/logo.png'),
                ),
              //  Image.asset('images/wakerfarmer.png', height: 150,width: 150,),
                // Text('คำนวณราคาข้าว', 
                // style: TextStyle(fontSize: 20.0)
                // ,),

               SizedBox(
                    height: 20,
                  ),

              Card(
                color: Colors.grey[300],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    
                    TextFormField(
                    controller: _priceFieldController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      icon: Icon(Icons.attach_money),
                      labelText: 'กรุณากรอกรายรับ',
                      labelStyle:
                       TextStyle(
                         fontSize: 20.0, color: Colors.black
                       ),
                      
                      fillColor: Colors.white70
                    ),
                  ),
                      
                  SizedBox(
                    height: 40,
                  ),

                     TextFormField(
                    controller:_kgFieldController ,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      icon: Icon(Icons.line_weight),
                      labelText: 'กรุณากรอกรายจ่าย',
                      labelStyle:
                       TextStyle(
                         fontSize: 20.0, color: Colors.black
                       ),
                      
                      fillColor: Colors.white70
                    ),
                  ),
                    
             
                  // SizedBox(
                  //   height: 40,
                  // ),
                  //   TextFormField(
                  //   controller: _moistureFieldController,
                  //   keyboardType: TextInputType.number,
                  //   decoration: InputDecoration(
                  //     icon: Icon(Icons.money_off),
                  //     labelText: 'กรุณากรอกค่าความชื้นของข้าว',
                  //     labelStyle:
                  //      TextStyle(
                  //        fontSize: 20.0, color: Colors.black
                  //      ),
                      
                  //     fillColor: Colors.white70
                  //   ),
                  // ),
                  
                  SizedBox(
                    height: 30,
                  ),
                 ElevatedButton(
                onPressed: () {
                  // _calculatesum();
                    onUpdate();
                  // {var route = new MaterialPageRoute(
                  //   builder: (BuildContext context) =>
                  //   new ShowPrice(value: _result,price: _resultkg,kg: _resultmoisture),

                  // );
                  // Navigator.of(context).push(route);
                  // }
                },
              

                child: new Text('คำนวณรายรับรายจ่าย',
                style: new TextStyle(
                  fontWeight: FontWeight.bold
                )
                ),
                // color: Colors.greenAccent,
                //   textColor: Colors.white,
                ),       
                    ],
                  ),
                ),
              ),
                    

              ],
            ),
          ),
        )
        
      ],
    ),
          );
     
  }
}




         
            


           