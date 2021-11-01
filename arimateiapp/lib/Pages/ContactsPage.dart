import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContactsPage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
     padding: EdgeInsets.only(
       top: 20.0,
       bottom: 20.0,
       left: 20.0,
      right: 20.0,
     ),
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
               
                child: Container(
                          child: Text(
                          "Telefones:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                ), 
         ),
         SizedBox(
            height: 10,
          ),
          Container(
            height: 30,
            alignment: Alignment.center,
                child: Container(
                          child: Text(
                          "(21)2415-2525",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                ),
         ),
      
       ],
      ),
    ), 
   );
    
  }
}