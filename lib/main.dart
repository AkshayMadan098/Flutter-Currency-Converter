import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Myhome(),
      debugShowCheckedModeBanner: false,
      theme:ThemeData(fontFamily: 'SourceSansPro'),
    );
  }
}
class Myhome extends StatefulWidget {
  @override
  _MyhomeState createState() => _MyhomeState();
}
TextEditingController inputController=TextEditingController();
TextEditingController outputController=TextEditingController();
Widget buildButton(String buttontext){
  return MaterialButton(
    height: 100,
    minWidth: 110,
  color: Colors.red,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Text(buttontext,style: TextStyle(color: Colors.white)),
    splashColor: Colors.green,
    onPressed: (){
      button_pressed(buttontext);
    },
  );
}
void button_pressed(String buttontext){
  double input=double.parse(inputController.text);
  double result;
  switch (buttontext) {
    case "Dollar":
      result=input*70;
      break;
      case "Euro":
      result=input*0.012;
      break;
      case "Pounds":
      result =input*0.01;
      break;
      case "Aus":
      result=0.020;
      break;
      case "Canada":
      result=input*0.18;
      break;
      case "Yen":
      result=input*0.65;
      break;
      case "Dinar":
      result=input*0.42;
      break;
      case "Bitty":
      result=input*0.77;

      break;
      case "Rubel":
      result=input*27;
      break;
    
  }
}

class _MyhomeState extends State<Myhome> {
  List currencylist=[
    "Dollar",
    "Euro",
    "Pounds",
    "Aus",
    "Canada",
    "Yen",
    "Bitty",
    "Rubel",
    "Dinar"

  ];

  List colors=[
    Colors.blue,
    Colors.red,
    Colors.pink,
    Colors.white,
    Colors.redAccent,
    Colors.amber,
    Colors.orange,
    Colors.lightBlue,
    Colors.green,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title:Text("CurrencyConverter")

     ),
     body: Container(
       child: Column(
         children: <Widget>[
           Padding(
             padding: const EdgeInsets.all(40),
             child: TextField(
               controller: inputController,
  decoration: InputDecoration(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
    filled: true,
    fillColor: Colors.grey,
    hintText: 'Enter a search term',
    hintStyle: TextStyle(fontSize: 20.0,color: Colors.white),
  ),
),
           ),
           SizedBox(
             height: 20,
           ),
Padding(
  padding: const EdgeInsets.all(40),
  child:   TextField(
    controller: outputController,
    decoration: InputDecoration(
  
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
  
      hintText: 'Result',
      hintStyle: TextStyle(fontSize: 20.0,color: Colors.white),
  
      filled: true,
  
      fillColor: Colors.grey,
  
    ),
  
  ),
),
Expanded(
  child: Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: buildButton("Dollar"),
          ),
          
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: buildButton("Euro "),
         ),
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: buildButton("Pounds"),
         ),
        ],
      ),
      Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: buildButton("Aus"),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: buildButton("Canada"),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: buildButton("Yen"),
          ),
        ],
      ),
Row(
        children: <Widget>[
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: buildButton("Bitty"),
         ),
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: buildButton("Rubel"),
         ),
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: buildButton("Dinar"),
         ),
        ],
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